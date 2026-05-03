package com.datn.backend.service;

import com.datn.backend.dto.request.ChangeOrderStatusRequest;
import com.datn.backend.dto.request.HoaDonTraHangRequest;
import com.datn.backend.dto.request.PlaceOrderRequest;
import com.datn.backend.dto.request.UpdateReturnRefundStatusReq;
import com.datn.backend.dto.response.HoaDonResponse;
import com.datn.backend.dto.response.HoaDonTraHangResponse;
import com.datn.backend.dto.response.SpctResponse;

import java.util.List;

public interface HoaDonTraHangService {

    HoaDonResponse getHoaDonByMa(String ma);

    List<SpctResponse> getDanhSachSanPhamDaMua(Integer idHoaDon);

    List<Integer> getListIdDotGiamGiaSanPhamByIdHoaDon(Integer idHoaDon);

    HoaDonResponse traHang(ChangeOrderStatusRequest changeOrderStatus);

    HoaDonTraHangResponse add(HoaDonTraHangRequest hoaDonTraHangRequest);

    HoaDonTraHangResponse getByIdHoaDon(Integer id);

    List<HoaDonTraHangResponse> getAll(String trangThai);

    HoaDonTraHangResponse updateWorkflowStatus(UpdateReturnRefundStatusReq req);

    HoaDonResponse placeOrderTraHang(PlaceOrderRequest placeOrderRequest);
}
