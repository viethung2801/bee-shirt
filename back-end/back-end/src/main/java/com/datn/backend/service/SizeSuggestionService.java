package com.datn.backend.service;

import com.datn.backend.dto.request.SizeSuggestionRequest;
import com.datn.backend.dto.response.SizeSuggestionResponse;

public interface SizeSuggestionService {

    SizeSuggestionResponse recommend(SizeSuggestionRequest request);
}
