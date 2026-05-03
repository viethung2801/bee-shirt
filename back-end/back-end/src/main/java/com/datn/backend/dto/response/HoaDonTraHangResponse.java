package com.datn.backend.dto.response;

import com.datn.backend.enumeration.TrangThaiTraHang;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class HoaDonTraHangResponse {

    private String ma;
    private String tenNguoiNhan;
    private String sdtNguoiNhan;
    private String emailNguoiNhan;
    private String diaChiNguoiNhan;
    private BigDecimal tongTien;
    private BigDecimal tongTienPhieuGiamGiaCu;
    private BigDecimal tongTienPhieuGiamGiaMoi;
    private BigDecimal tongTienTraKhach;
    private String ghiChu;
    private String lyDoTuChoi;
    private TrangThaiTraHang trangThai;
    private LocalDateTime ngayDuyet;
    private LocalDateTime ngayHoanTien;

    private List<HoaDonChiTietResponse> hoaDonChiTiets;
    private HoaDonResponse hoaDon;

    private LocalDateTime createdAt;
}
