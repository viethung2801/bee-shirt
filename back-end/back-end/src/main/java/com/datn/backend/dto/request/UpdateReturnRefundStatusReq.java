package com.datn.backend.dto.request;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UpdateReturnRefundStatusReq {

    @Min(value = 1, message = "ID yeu cau tra hang khong hop le")
    private int hoaDonTraHangId;

    @NotBlank(message = "Trang thai khong duoc trong")
    private String trangThai;

    private String ghiChu;
}
