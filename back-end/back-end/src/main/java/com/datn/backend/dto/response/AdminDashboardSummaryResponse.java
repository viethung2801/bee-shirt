package com.datn.backend.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AdminDashboardSummaryResponse {

    private LocalDate fromDate;
    private LocalDate toDate;
    private AdminDashboardKpiResponse kpi;
    private List<AdminTopProductResponse> topProducts;
}
