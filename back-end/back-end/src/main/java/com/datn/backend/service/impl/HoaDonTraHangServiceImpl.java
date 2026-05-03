package com.datn.backend.service.impl;

import com.datn.backend.dto.request.ChangeOrderStatusRequest;
import com.datn.backend.dto.request.HoaDonChiTietRequest;
import com.datn.backend.dto.request.HoaDonTraHangRequest;
import com.datn.backend.dto.request.PlaceOrderRequest;
import com.datn.backend.dto.request.ThanhToanRequest;
import com.datn.backend.dto.request.UpdateReturnRefundStatusReq;
import com.datn.backend.dto.response.HoaDonResponse;
import com.datn.backend.dto.response.HoaDonTraHangResponse;
import com.datn.backend.dto.response.SpctResponse;
import com.datn.backend.enumeration.LoaiHinhThuc;
import com.datn.backend.enumeration.LoaiHoaDon;
import com.datn.backend.enumeration.TrangThaiHoaDon;
import com.datn.backend.enumeration.TrangThaiTraHang;
import com.datn.backend.exception.custom_exception.OrderStatusException;
import com.datn.backend.exception.custom_exception.PlaceOrderException;
import com.datn.backend.exception.custom_exception.ResourceInvalidException;
import com.datn.backend.exception.custom_exception.ResourceNotFoundException;
import com.datn.backend.model.hoa_don.HinhThucThanhToan;
import com.datn.backend.model.hoa_don.HoaDon;
import com.datn.backend.model.hoa_don.HoaDonChiTiet;
import com.datn.backend.model.hoa_don.HoaDonTraHang;
import com.datn.backend.model.hoa_don.LichSuHoaDon;
import com.datn.backend.model.hoa_don.ThanhToan;
import com.datn.backend.model.khach_hang.KhachHang;
import com.datn.backend.model.nhan_vien.NhanVien;
import com.datn.backend.model.phieu_giam_gia.PhieuGiamGia;
import com.datn.backend.model.san_pham.SanPhamChiTiet;
import com.datn.backend.repository.HinhThucThanhToanRepository;
import com.datn.backend.repository.HoaDonChiTietRepository;
import com.datn.backend.repository.HoaDonRepository;
import com.datn.backend.repository.HoaDonTraHangModelRepository;
import com.datn.backend.repository.HoaDonTraHangRepository;
import com.datn.backend.repository.KhachHangRepository;
import com.datn.backend.repository.LichSuHoaDonRepository;
import com.datn.backend.repository.NhanVienRepository;
import com.datn.backend.repository.PhieuGiamGiaKhachHangRepository;
import com.datn.backend.repository.PhieuGiamGiaRepository;
import com.datn.backend.repository.SanPhamChiTietRepository;
import com.datn.backend.service.HoaDonTraHangService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class HoaDonTraHangServiceImpl implements HoaDonTraHangService {

    private final HoaDonTraHangRepository repository;
    private final HoaDonTraHangModelRepository hoaDonTraHangModelRepository;
    private final HoaDonChiTietRepository hoaDonChiTietRepository;
    private final NhanVienRepository nhanVienRepo;
    private final KhachHangRepository khachHangRepo;
    private final PhieuGiamGiaRepository phieuGiamGiaRepo;
    private final PhieuGiamGiaKhachHangRepository phieuGiamGiaKhachHangRepository;
    private final ModelMapper modelMapper;
    private final LichSuHoaDonRepository lichSuHoaDonRepository;
    private final SanPhamChiTietRepository spctRepo;
    private final HinhThucThanhToanRepository hinhThucThanhToanRepo;
    private final HoaDonRepository hoaDonRepository;

    @Override
    @Transactional
    public HoaDonTraHangResponse add(HoaDonTraHangRequest hoaDonTraHangRequest) {
        HoaDon order = validateAndGetOrderForReturn(hoaDonTraHangRequest.getHoaDonId());
        Optional<HoaDonTraHang> existedRequest = hoaDonTraHangModelRepository.findByHoaDonId(order.getId());
        if (existedRequest.isPresent()) {
            throw new ResourceInvalidException("Hoa don nay da ton tai yeu cau tra hang");
        }
        validateReturnItems(hoaDonTraHangRequest.getHoaDonChiTiets(), order);

        HoaDonTraHang request = HoaDonTraHang.builder()
                .ma(generateMaHoaDonTraHang())
                .tenNguoiNhan(hoaDonTraHangRequest.getTenNguoiNhan())
                .sdtNguoiNhan(hoaDonTraHangRequest.getSdtNguoiNhan())
                .emailNguoiNhan(hoaDonTraHangRequest.getEmailNguoiNhan())
                .diaChiNguoiNhan(hoaDonTraHangRequest.getDiaChiNguoiNhan())
                .tongTien(hoaDonTraHangRequest.getTongTien())
                .tongTienPhieuGiamGiaMoi(hoaDonTraHangRequest.getTongTienPhieuGiamGiaMoi())
                .tongTienPhieuGiamGiaCu(hoaDonTraHangRequest.getTongTienPhieuGiamGiaCu())
                .tongTienTraKhach(hoaDonTraHangRequest.getTongTienTraKhach())
                .ghiChu(hoaDonTraHangRequest.getGhiChu())
                .trangThai(TrangThaiTraHang.CHO_DUYET)
                .hoaDon(order)
                .build();

        HoaDonTraHang savedRequest = hoaDonTraHangModelRepository.save(request);
        savedRequest.setHoaDonChiTiets(mapToHoaDonChiTietTraHang(hoaDonTraHangRequest.getHoaDonChiTiets(), savedRequest));

        createOrderHistory(order, "Yeu cau tra hang", "Khach hang da tao yeu cau tra hang", order.getTrangThai());
        return modelMapper.map(savedRequest, HoaDonTraHangResponse.class);
    }

    private void validateReturnItems(List<HoaDonChiTietRequest> returnItems, HoaDon order) {
        if (order.getHoaDonChiTiets() == null || order.getHoaDonChiTiets().isEmpty()) {
            throw new ResourceInvalidException("Hoa don khong co san pham de tao yeu cau tra hang");
        }
        Map<Integer, Integer> boughtQuantityByProductDetails = new HashMap<>();
        for (HoaDonChiTiet item : order.getHoaDonChiTiets()) {
            int spctId = item.getSanPhamChiTiet().getId();
            int currentQty = boughtQuantityByProductDetails.getOrDefault(spctId, 0);
            boughtQuantityByProductDetails.put(spctId, currentQty + item.getSoLuong());
        }

        for (HoaDonChiTietRequest requestItem : returnItems) {
            Integer productDetailsId = requestItem.getSanPhamChiTietId();
            Integer boughtQty = boughtQuantityByProductDetails.get(productDetailsId);

            if (boughtQty == null) {
                throw new ResourceInvalidException("San pham chi tiet id=" + productDetailsId
                        + " khong ton tai trong hoa don da mua");
            }
            if (requestItem.getSoLuong() > boughtQty) {
                throw new ResourceInvalidException("So luong tra hang cua san pham chi tiet id="
                        + productDetailsId + " vuot qua so luong da mua");
            }
        }
    }

    @Override
    public HoaDonResponse getHoaDonByMa(String ma) {
        if (ma == null || ma.trim().isEmpty()) {
            throw new ResourceNotFoundException("Ma hoa don khong duoc trong");
        }
        HoaDon order = repository.findHoaDonByMa(ma.trim())
                .orElseThrow(() -> new ResourceNotFoundException("Khong tim thay hoa don co ma: " + ma));
        validateOrderCanReturn(order);
        return modelMapper.map(order, HoaDonResponse.class);
    }

    @Override
    public List<SpctResponse> getDanhSachSanPhamDaMua(Integer idHoaDon) {
        if (idHoaDon == null || idHoaDon <= 0) {
            throw new ResourceNotFoundException("Khong tim thay hoa don de lay danh sach san pham");
        }
        return repository.getAllSanPhamChiTiet(idHoaDon)
                .stream()
                .map(item -> modelMapper.map(item, SpctResponse.class))
                .toList();
    }

    @Override
    public List<Integer> getListIdDotGiamGiaSanPhamByIdHoaDon(Integer idHoaDon) {
        return repository.getAllIdSanPhamChiTietInDotGiamGiaByHoaDonId(idHoaDon);
    }

    @Override
    @Transactional
    public HoaDonResponse placeOrderTraHang(PlaceOrderRequest placeOrderRequest) {
        return mapToHoaDonResponse(createHoaDonTraHangTaiQuay(placeOrderRequest));
    }

    @Override
    @Transactional
    public HoaDonResponse traHang(ChangeOrderStatusRequest changeOrderStatus) {
        int orderId = changeOrderStatus.getIdHoaDon();
        HoaDonTraHang request = hoaDonTraHangModelRepository.findByHoaDonId(orderId)
                .orElseThrow(() -> new ResourceNotFoundException("Khong tim thay yeu cau tra hang cua hoa don id=" + orderId));
        updateRequestStatusInternal(request, TrangThaiTraHang.DA_DUYET, changeOrderStatus.getMoTa());
        return modelMapper.map(request.getHoaDon(), HoaDonResponse.class);
    }

    @Override
    public HoaDonTraHangResponse getByIdHoaDon(Integer id) {
        return hoaDonTraHangModelRepository.findByHoaDonId(id)
                .map(item -> modelMapper.map(item, HoaDonTraHangResponse.class))
                .orElse(null);
    }

    @Override
    public List<HoaDonTraHangResponse> getAll(String trangThai) {
        List<HoaDonTraHang> returnRequests;
        if (trangThai == null || trangThai.trim().isEmpty()) {
            returnRequests = hoaDonTraHangModelRepository.findAllByOrderByCreatedAtDesc();
        } else {
            TrangThaiTraHang parsedStatus = parseTrangThaiTraHang(trangThai);
            returnRequests = hoaDonTraHangModelRepository.findAllByTrangThaiOrderByCreatedAtDesc(parsedStatus);
        }
        return returnRequests.stream()
                .map(item -> modelMapper.map(item, HoaDonTraHangResponse.class))
                .toList();
    }

    @Override
    @Transactional
    public HoaDonTraHangResponse updateWorkflowStatus(UpdateReturnRefundStatusReq req) {
        HoaDonTraHang request = hoaDonTraHangModelRepository.findById(req.getHoaDonTraHangId())
                .orElseThrow(() -> new ResourceNotFoundException(
                        "Khong tim thay yeu cau tra hang id=" + req.getHoaDonTraHangId()));

        TrangThaiTraHang newStatus = parseTrangThaiTraHang(req.getTrangThai());
        updateRequestStatusInternal(request, newStatus, req.getGhiChu());

        return modelMapper.map(request, HoaDonTraHangResponse.class);
    }

    private void updateRequestStatusInternal(HoaDonTraHang request, TrangThaiTraHang newStatus, String note) {
        TrangThaiTraHang currentStatus = request.getTrangThai();
        if (!isValidTransition(currentStatus, newStatus)) {
            throw new OrderStatusException(
                    "Khong the chuyen trang thai tu " + currentStatus + " sang " + newStatus);
        }

        HoaDon order = request.getHoaDon();
        String normalizedNote = note == null ? "" : note.trim();

        if (newStatus == TrangThaiTraHang.DA_DUYET) {
            request.setNgayDuyet(LocalDateTime.now());
            updateOrderStatus(order, TrangThaiHoaDon.TRA_HANG,
                    "Da duyet yeu cau tra hang. " + normalizedNote);
        } else if (newStatus == TrangThaiTraHang.TU_CHOI) {
            if (normalizedNote.isEmpty()) {
                throw new ResourceInvalidException("Vui long nhap ly do tu choi yeu cau tra hang");
            }
            request.setLyDoTuChoi(normalizedNote);
            createOrderHistory(order, "Tu choi yeu cau tra hang", normalizedNote, order.getTrangThai());
        } else if (newStatus == TrangThaiTraHang.CHO_HOAN_TIEN) {
            updateOrderStatus(order, TrangThaiHoaDon.CHO_HOAN_TIEN,
                    "Yeu cau tra hang da duoc tiep nhan, cho hoan tien. " + normalizedNote);
        } else if (newStatus == TrangThaiTraHang.DA_HOAN_TIEN) {
            request.setNgayHoanTien(LocalDateTime.now());
            updateOrderStatus(order, TrangThaiHoaDon.DA_HOAN_TIEN,
                    "Da hoan tien cho yeu cau tra hang. " + normalizedNote);
        } else if (newStatus == TrangThaiTraHang.HOAN_TAT) {
            rollbackProductDetailsQuantity(request);
            createOrderHistory(order, "Hoan tat tra hang",
                    normalizedNote.isEmpty() ? "Da hoan tat xu ly tra hang" : normalizedNote,
                    order.getTrangThai());
        }

        request.setTrangThai(newStatus);
        hoaDonTraHangModelRepository.save(request);
    }

    private void updateOrderStatus(HoaDon order, TrangThaiHoaDon status, String note) {
        order.setTrangThai(status);
        hoaDonRepository.save(order);
        createOrderHistory(order, status.getTitle(), note, status);
    }

    private void createOrderHistory(HoaDon order, String title, String desc, TrangThaiHoaDon status) {
        LichSuHoaDon history = LichSuHoaDon.builder()
                .hoaDon(order)
                .tieuDe(title)
                .moTa(desc)
                .trangThai(status)
                .build();
        lichSuHoaDonRepository.save(history);
    }

    private boolean isValidTransition(TrangThaiTraHang currentStatus, TrangThaiTraHang nextStatus) {
        if (currentStatus == null) {
            return nextStatus == TrangThaiTraHang.CHO_DUYET;
        }
        return switch (currentStatus) {
            case CHO_DUYET -> nextStatus == TrangThaiTraHang.DA_DUYET || nextStatus == TrangThaiTraHang.TU_CHOI;
            case DA_DUYET -> nextStatus == TrangThaiTraHang.CHO_HOAN_TIEN;
            case CHO_HOAN_TIEN -> nextStatus == TrangThaiTraHang.DA_HOAN_TIEN;
            case DA_HOAN_TIEN -> nextStatus == TrangThaiTraHang.HOAN_TAT;
            case TU_CHOI, HOAN_TAT -> false;
        };
    }

    private TrangThaiTraHang parseTrangThaiTraHang(String status) {
        try {
            return TrangThaiTraHang.valueOf(status.trim().toUpperCase());
        } catch (Exception ex) {
            throw new ResourceInvalidException("Trang thai yeu cau tra hang khong hop le: " + status);
        }
    }

    private HoaDon validateAndGetOrderForReturn(Integer orderId) {
        if (orderId == null || orderId <= 0) {
            throw new ResourceNotFoundException("Khong tim thay hoa don de tao yeu cau tra hang");
        }
        HoaDon order = hoaDonRepository.findById(orderId)
                .orElseThrow(() -> new ResourceNotFoundException("Khong tim thay hoa don id: " + orderId));
        validateOrderCanReturn(order);
        return order;
    }

    private void validateOrderCanReturn(HoaDon order) {
        if (order.getTrangThai() == TrangThaiHoaDon.TRA_HANG
                || order.getTrangThai() == TrangThaiHoaDon.CHO_HOAN_TIEN
                || order.getTrangThai() == TrangThaiHoaDon.DA_HOAN_TIEN) {
            throw new ResourceInvalidException("Don hang dang trong qua trinh tra hang/hoan tien");
        }
        if (order.getTrangThai() != TrangThaiHoaDon.HOAN_THANH) {
            throw new ResourceInvalidException("Don hang chua hoan thanh, khong the tra hang");
        }
        if (order.getUpdatedAt() == null) {
            throw new ResourceInvalidException("Don hang chua co moc thoi gian hoan thanh");
        }
        if (LocalDateTime.now().minusDays(7).isAfter(order.getUpdatedAt())) {
            throw new ResourceInvalidException("Don hang da qua thoi gian tra hang");
        }
    }

    private void rollbackProductDetailsQuantity(HoaDonTraHang request) {
        if (request.getHoaDonChiTiets() == null || request.getHoaDonChiTiets().isEmpty()) {
            return;
        }
        request.getHoaDonChiTiets().forEach(item -> {
            SanPhamChiTiet productDetails = item.getSanPhamChiTiet();
            productDetails.setSoLuongTon(productDetails.getSoLuongTon() + item.getSoLuong());
            spctRepo.save(productDetails);
        });
    }

    private HoaDon createHoaDonTraHangTaiQuay(PlaceOrderRequest placeOrderRequest) {
        NhanVien nhanVien = nhanVienRepo.findById(placeOrderRequest.getNhanVienId()).orElse(null);
        KhachHang khachHang = placeOrderRequest.getKhachHangId() != null
                ? khachHangRepo.findById(placeOrderRequest.getKhachHangId()).orElse(null)
                : null;
        PhieuGiamGia phieuGiamGia = validPhieuGiamGia(placeOrderRequest.getPhieuGiamGiaId());

        HoaDon hoaDon = HoaDon.builder()
                .ma(generateMaHD())
                .loaiHoaDon(LoaiHoaDon.valueOf(placeOrderRequest.getLoaiHoaDon()))
                .tenNguoiNhan(null)
                .sdtNguoiNhan(null)
                .emailNguoiNhan(null)
                .diaChiNguoiNhan(null)
                .tongTien(placeOrderRequest.getTongTien())
                .tienGiam(placeOrderRequest.getTienGiam())
                .phiVanChuyen(BigDecimal.ZERO)
                .loaiHoaDon(LoaiHoaDon.TAI_QUAY)
                .trangThai(TrangThaiHoaDon.HOAN_THANH)
                .ghiChu(placeOrderRequest.getGhiChu())
                .nhanVien(nhanVien)
                .khachHang(khachHang)
                .phieuGiamGia(phieuGiamGia)
                .build();

        hoaDonRepository.save(hoaDon);
        hoaDon.setHoaDonChiTiets(mapToHoaDonChiTiet(placeOrderRequest.getHoaDonChiTiets(), hoaDon));
        hoaDon.setLichSuHoaDons(createLichSuHoaDonTaiQuay(hoaDon));
        hoaDon.setThanhToans(createThanhToans(placeOrderRequest.getThanhToans(), hoaDon));
        return hoaDon;
    }

    public HoaDonResponse mapToHoaDonResponse(HoaDon hoaDon) {
        return modelMapper.map(hoaDon, HoaDonResponse.class);
    }

    private PhieuGiamGia validPhieuGiamGia(Integer phieuGiamGiaId) {
        PhieuGiamGia phieuGiamGia = null;
        if (phieuGiamGiaId != null) {
            phieuGiamGia = phieuGiamGiaRepo.findById(phieuGiamGiaId).orElseThrow(
                    () -> new PlaceOrderException("Phieu giam gia khong hop le")
            );
            if (phieuGiamGia.getSoLuong() <= 0
                    && phieuGiamGiaKhachHangRepository.findByPhieuGiamGiaId(phieuGiamGia.getId()).isEmpty()) {
                throw new PlaceOrderException("Phieu giam gia da het so luong su dung");
            }
            if (phieuGiamGiaKhachHangRepository.findByPhieuGiamGiaId(phieuGiamGia.getId()).isEmpty()) {
                phieuGiamGia.setSoLuong(phieuGiamGia.getSoLuong() - 1);
            }
        }
        return phieuGiamGia;
    }

    private List<LichSuHoaDon> createLichSuHoaDonTaiQuay(HoaDon hoaDon) {
        List<LichSuHoaDon> lichSuHoaDons = new ArrayList<>();
        LichSuHoaDon lichSuHoaDon = LichSuHoaDon.builder()
                .tieuDe("Hoan thanh")
                .moTa("")
                .trangThai(TrangThaiHoaDon.HOAN_THANH)
                .hoaDon(hoaDon)
                .build();

        lichSuHoaDons.add(lichSuHoaDon);
        return lichSuHoaDons;
    }

    private List<ThanhToan> createThanhToans(List<ThanhToanRequest> thanhToans, HoaDon hoaDon) {
        return thanhToans.stream().map((tt) -> {
            ThanhToan thanhToan = new ThanhToan();
            HinhThucThanhToan hinhThucThanhToan = hinhThucThanhToanRepo.findByHinhThuc(
                    LoaiHinhThuc.valueOf(tt.getHinhThucThanhToan())
            ).orElse(null);

            if (hinhThucThanhToan == null) {
                hinhThucThanhToan = hinhThucThanhToanRepo.save(
                        HinhThucThanhToan.builder().hinhThuc(LoaiHinhThuc.valueOf(tt.getHinhThucThanhToan())).build()
                );
            }
            thanhToan.setMaGiaoDich(tt.getMaGiaoDich());
            thanhToan.setSoTien(tt.getSoTien());
            thanhToan.setTrangThai(true);
            thanhToan.setHinhThucThanhToan(hinhThucThanhToan);
            thanhToan.setHoaDon(hoaDon);
            return thanhToan;
        }).toList();
    }

    private List<HoaDonChiTiet> mapToHoaDonChiTiet(List<HoaDonChiTietRequest> hoaDonChiTiets, HoaDon hoaDon) {
        if (hoaDonChiTiets.isEmpty()) {
            throw new PlaceOrderException("Vui long them san pham vao don");
        }
        return hoaDonChiTiets.stream().map((hdct) -> {
            HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
            SanPhamChiTiet sanPhamChiTiet = spctRepo.findById(hdct.getSanPhamChiTietId()).orElse(null);

            if (hdct.getSoLuong() <= 0) {
                throw new PlaceOrderException("So luong san pham khong hop le");
            }
            hoaDonChiTiet.setSoLuong(hdct.getSoLuong());
            hoaDonChiTiet.setGiaBan(hdct.getGiaBan());
            hoaDonChiTiet.setGiaNhap(hdct.getGiaNhap());
            hoaDonChiTiet.setSanPhamChiTiet(sanPhamChiTiet);
            hoaDonChiTiet.setHoaDon(hoaDon);
            return hoaDonChiTiet;
        }).toList();
    }

    private List<HoaDonChiTiet> mapToHoaDonChiTietTraHang(List<HoaDonChiTietRequest> hoaDonChiTiets, HoaDonTraHang hoaDonTraHang) {
        if (hoaDonChiTiets.isEmpty()) {
            throw new PlaceOrderException("Vui long them san pham vao don");
        }
        return hoaDonChiTietRepository.saveAll(hoaDonChiTiets.stream().map((hdct) -> {
            if (hdct.getSoLuong() <= 0) {
                throw new PlaceOrderException("So luong san pham tra hang khong hop le");
            }
            HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
            SanPhamChiTiet sanPhamChiTiet = spctRepo.findById(hdct.getSanPhamChiTietId())
                    .orElseThrow(() -> new ResourceNotFoundException(
                            "San pham chi tiet id=" + hdct.getSanPhamChiTietId() + " khong ton tai"));
            hoaDonChiTiet.setSoLuong(hdct.getSoLuong());
            hoaDonChiTiet.setGiaBan(hdct.getGiaBan());
            hoaDonChiTiet.setGiaNhap(hdct.getGiaNhap());
            hoaDonChiTiet.setSanPhamChiTiet(sanPhamChiTiet);
            hoaDonChiTiet.setHoaDonTraHang(hoaDonTraHang);
            return hoaDonChiTiet;
        }).toList());
    }

    public String generateMaHD() {
        long count = hoaDonRepository.count();
        String maHD = "HD" + count;
        while (hoaDonRepository.existsByMa(maHD)) {
            count += 1;
            maHD = "HD" + count;
        }
        return maHD;
    }

    private String generateMaHoaDonTraHang() {
        long count = hoaDonTraHangModelRepository.count();
        String maHD = "HDTH" + count;
        while (hoaDonTraHangModelRepository.existsByMa(maHD)) {
            count += 1;
            maHD = "HDTH" + count;
        }
        return maHD;
    }
}
