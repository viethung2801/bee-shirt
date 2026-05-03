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
public class AdminTopProductResponse {

    private Integer productId;
    private String productCode;
    private String productName;
    private Long quantitySold;
    private BigDecimal revenue;
}
