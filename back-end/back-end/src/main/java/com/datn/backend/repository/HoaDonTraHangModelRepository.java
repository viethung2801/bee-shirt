package com.datn.backend.repository;

import com.datn.backend.enumeration.TrangThaiTraHang;
import com.datn.backend.model.hoa_don.HoaDonTraHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface HoaDonTraHangModelRepository extends JpaRepository<HoaDonTraHang, Integer> {

    Optional<HoaDonTraHang> findByHoaDonId(Integer id);

    boolean existsByMa(String maHD);

    List<HoaDonTraHang> findAllByOrderByCreatedAtDesc();



    List<HoaDonTraHang> findAllByTrangThai(TrangThaiTraHang trangThaiTraHang);

    List<HoaDonTraHang> findAllByTrangThaiOrderByCreatedAtDesc(TrangThaiTraHang trangThaiTraHang);
}
