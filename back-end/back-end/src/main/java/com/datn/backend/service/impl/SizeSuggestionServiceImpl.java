package com.datn.backend.service.impl;

import com.datn.backend.dto.request.SizeSuggestionRequest;
import com.datn.backend.dto.response.KichCoResponse;
import com.datn.backend.dto.response.SizeSuggestionResponse;
import com.datn.backend.model.san_pham.KichCo;
import com.datn.backend.repository.KichCoRepository;
import com.datn.backend.service.SizeSuggestionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class SizeSuggestionServiceImpl implements SizeSuggestionService {

    private static final List<SizeRule> SIZE_RULES = List.of(
            new SizeRule("S"),
            new SizeRule("M"),
            new SizeRule("L"),
            new SizeRule("XL"),
            new SizeRule("XXL"),
            new SizeRule("3XL")
    );

    private final KichCoRepository kichCoRepository;

    @Override
    public SizeSuggestionResponse recommend(SizeSuggestionRequest request) {
        if (request.getColorId() != null && request.getProductId() == null) {
            throw new IllegalArgumentException("Can truyen productId khi loc theo colorId");
        }

        int heightIndex = resolveSizeIndexByHeight(request.getChieuCaoCm());
        int weightIndex = resolveSizeIndexByWeight(request.getCanNangKg().doubleValue());
        String fitPreference = normalizeFitPreference(request.getFitPreference());
        int calculatedIndex = clamp(Math.max(heightIndex, weightIndex) + fitAdjustment(fitPreference));
        String calculatedSizeName = SIZE_RULES.get(calculatedIndex).name();

        List<KichCo> availableSizes = getAvailableSizes(request);
        Optional<KichCo> exactSize = findByRuleName(availableSizes, calculatedSizeName);
        Optional<KichCo> recommendedSize = exactSize.isPresent()
                ? exactSize
                : findNearestAvailableSize(availableSizes, calculatedIndex);

        List<KichCoResponse> availableSizeResponses = availableSizes.stream()
                .map(this::toResponse)
                .toList();

        if (recommendedSize.isEmpty()) {
            return SizeSuggestionResponse.builder()
                    .recommendedSizeName(calculatedSizeName)
                    .calculatedSizeName(calculatedSizeName)
                    .available(false)
                    .exactMatch(false)
                    .confidence("LOW")
                    .fitPreference(fitPreference)
                    .message("Khong tim thay size dang hoat dong de goi y")
                    .alternativeSizeNames(List.of())
                    .availableSizes(availableSizeResponses)
                    .build();
        }

        KichCo selectedSize = recommendedSize.get();
        int selectedIndex = resolveSizeIndexByName(selectedSize.getTen()).orElse(calculatedIndex);

        return SizeSuggestionResponse.builder()
                .recommendedSize(toResponse(selectedSize))
                .recommendedSizeName(selectedSize.getTen())
                .calculatedSizeName(calculatedSizeName)
                .available(true)
                .exactMatch(exactSize.isPresent())
                .confidence(resolveConfidence(exactSize.isPresent(), heightIndex, weightIndex, selectedIndex, calculatedIndex))
                .fitPreference(fitPreference)
                .message(resolveMessage(exactSize.isPresent(), calculatedSizeName, selectedSize.getTen()))
                .alternativeSizeNames(resolveAlternativeSizeNames(availableSizes, calculatedIndex, selectedSize.getTen()))
                .availableSizes(availableSizeResponses)
                .build();
    }

    private List<KichCo> getAvailableSizes(SizeSuggestionRequest request) {
        if (request.getProductId() != null && request.getColorId() != null) {
            return kichCoRepository.getAvailableByProductAndColor(request.getProductId(), request.getColorId());
        }
        if (request.getProductId() != null) {
            return kichCoRepository.getAvailableByProduct(request.getProductId());
        }
        return kichCoRepository.getAllActive();
    }

    private int resolveSizeIndexByHeight(int heightCm) {
        if (heightCm <= 160) {
            return 0;
        }
        if (heightCm <= 165) {
            return 1;
        }
        if (heightCm <= 172) {
            return 2;
        }
        if (heightCm <= 178) {
            return 3;
        }
        if (heightCm <= 185) {
            return 4;
        }
        return 5;
    }

    private int resolveSizeIndexByWeight(double weightKg) {
        if (weightKg <= 50) {
            return 0;
        }
        if (weightKg <= 60) {
            return 1;
        }
        if (weightKg <= 70) {
            return 2;
        }
        if (weightKg <= 80) {
            return 3;
        }
        if (weightKg <= 90) {
            return 4;
        }
        return 5;
    }

    private Optional<KichCo> findByRuleName(List<KichCo> sizes, String ruleName) {
        String normalizedRuleName = normalizeSizeName(ruleName);
        return sizes.stream()
                .filter(size -> normalizeSizeName(size.getTen()).equals(normalizedRuleName))
                .findFirst();
    }

    private Optional<KichCo> findNearestAvailableSize(List<KichCo> sizes, int calculatedIndex) {
        return sizes.stream()
                .filter(size -> resolveSizeIndexByName(size.getTen()).isPresent())
                .min(Comparator.comparingInt(size ->
                        Math.abs(resolveSizeIndexByName(size.getTen()).orElse(calculatedIndex) - calculatedIndex)));
    }

    private List<String> resolveAlternativeSizeNames(List<KichCo> sizes, int calculatedIndex, String selectedSizeName) {
        List<String> alternatives = new ArrayList<>();
        for (KichCo size : sizes) {
            Optional<Integer> sizeIndex = resolveSizeIndexByName(size.getTen());
            if (sizeIndex.isPresent()
                    && Math.abs(sizeIndex.get() - calculatedIndex) == 1
                    && !normalizeSizeName(size.getTen()).equals(normalizeSizeName(selectedSizeName))) {
                alternatives.add(size.getTen());
            }
        }
        return alternatives;
    }

    private Optional<Integer> resolveSizeIndexByName(String sizeName) {
        String normalizedSizeName = normalizeSizeName(sizeName);
        for (int i = 0; i < SIZE_RULES.size(); i++) {
            if (normalizeSizeName(SIZE_RULES.get(i).name()).equals(normalizedSizeName)) {
                return Optional.of(i);
            }
        }
        return Optional.empty();
    }

    private String normalizeSizeName(String sizeName) {
        if (sizeName == null) {
            return "";
        }

        String normalized = sizeName.trim()
                .toUpperCase(Locale.ROOT)
                .replace(" ", "")
                .replace("-", "");

        if ("2XL".equals(normalized)) {
            return "XXL";
        }
        if ("XXXL".equals(normalized)) {
            return "3XL";
        }
        return normalized;
    }

    private String normalizeFitPreference(String fitPreference) {
        if (fitPreference == null || fitPreference.isBlank()) {
            return "REGULAR";
        }

        String normalized = fitPreference.trim().toUpperCase(Locale.ROOT);
        if ("OM".equals(normalized) || "SLIM".equals(normalized)) {
            return "SLIM";
        }
        if ("RONG".equals(normalized) || "OVERSIZE".equals(normalized)) {
            return "OVERSIZE";
        }
        return "REGULAR";
    }

    private int fitAdjustment(String fitPreference) {
        if ("SLIM".equals(fitPreference)) {
            return -1;
        }
        if ("OVERSIZE".equals(fitPreference)) {
            return 1;
        }
        return 0;
    }

    private int clamp(int index) {
        return Math.max(0, Math.min(index, SIZE_RULES.size() - 1));
    }

    private String resolveConfidence(boolean exactAvailable, int heightIndex, int weightIndex, int selectedIndex, int calculatedIndex) {
        if (!exactAvailable) {
            return Math.abs(selectedIndex - calculatedIndex) <= 1 ? "MEDIUM" : "LOW";
        }
        return Math.abs(heightIndex - weightIndex) <= 1 ? "HIGH" : "MEDIUM";
    }

    private String resolveMessage(boolean exactAvailable, String calculatedSizeName, String selectedSizeName) {
        if (exactAvailable) {
            return "Goi y size phu hop";
        }
        return "Size phu hop la " + calculatedSizeName + ", nhung hien khong co san. Goi y size gan nhat la " + selectedSizeName;
    }

    private KichCoResponse toResponse(KichCo kichCo) {
        return KichCoResponse.builder()
                .id(kichCo.getId())
                .ten(kichCo.getTen())
                .trangThai(kichCo.isTrangThai())
                .build();
    }

    private record SizeRule(String name) {
    }
}
