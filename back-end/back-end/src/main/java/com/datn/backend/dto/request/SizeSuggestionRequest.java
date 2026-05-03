package com.datn.backend.dto.request;

import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
public class SizeSuggestionRequest {

    @NotNull(message = "Chieu cao la bat buoc")
    @Min(value = 120, message = "Chieu cao phai tu 120 cm")
    @Max(value = 220, message = "Chieu cao khong duoc vuot qua 220 cm")
    private Integer chieuCaoCm;

    @NotNull(message = "Can nang la bat buoc")
    @DecimalMin(value = "30.0", message = "Can nang phai tu 30 kg")
    @DecimalMax(value = "180.0", message = "Can nang khong duoc vuot qua 180 kg")
    private BigDecimal canNangKg;

    private Integer productId;

    private Integer colorId;

    private String fitPreference;
}
