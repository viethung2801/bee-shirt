package com.datn.backend.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AdminDashboardKpiResponse {

    private BigDecimal totalRevenue;
    private Long totalOrders;
    private Long completedOrders;
    private Long cancelledOrders;
    private BigDecimal averageOrderValue;
    private BigDecimal cancellationRate;
}
