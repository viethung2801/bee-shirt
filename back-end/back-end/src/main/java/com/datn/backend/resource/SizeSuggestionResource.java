package com.datn.backend.resource;

import com.datn.backend.dto.request.SizeSuggestionRequest;
import com.datn.backend.dto.response.SizeSuggestionResponse;
import com.datn.backend.service.SizeSuggestionService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/size-suggestion")
@RequiredArgsConstructor
public class SizeSuggestionResource {

    private final SizeSuggestionService sizeSuggestionService;

    @PostMapping("/recommend")
    public ResponseEntity<SizeSuggestionResponse> recommend(@Valid @RequestBody SizeSuggestionRequest request) {
        return ResponseEntity.ok(sizeSuggestionService.recommend(request));
    }
}
