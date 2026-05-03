package com.datn.backend.dto.response;

import java.math.BigDecimal;

public interface AdminTopProductProjection {

    Integer getProductId();

    String getProductCode();

    String getProductName();

    Long getQuantitySold();

    BigDecimal getRevenue();
}
