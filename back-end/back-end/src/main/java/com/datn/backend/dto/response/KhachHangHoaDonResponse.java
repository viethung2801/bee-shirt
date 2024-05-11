package com.datn.backend.dto.response;

import com.datn.backend.model.khach_hang.DiaChi;
import lombok.*;

import java.util.List;

/**
 * @author HungDV
 */

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class KhachHangHoaDonResponse {
    private Integer id;
    private String hoTen;
    private String sdt;
    private String email;
    private List<DiaChi> diaChis;
}
