package com.datn.backend.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class SizeSuggestionResponse {

    private KichCoResponse recommendedSize;

    private String recommendedSizeName;

    private String calculatedSizeName;

    private boolean available;

    private boolean exactMatch;

    private String confidence;

    private String fitPreference;

    private String message;

    private List<String> alternativeSizeNames;

    private List<KichCoResponse> availableSizes;
}
