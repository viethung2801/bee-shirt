package com.datn.backend.resource;

import com.datn.backend.dto.response.AdminDashboardKpiResponse;
import com.datn.backend.dto.response.AdminDashboardSummaryResponse;
import com.datn.backend.dto.response.AdminTopProductResponse;
import com.datn.backend.dto.response.CouponsSumarryResponse;
import com.datn.backend.dto.response.DiscountSummaryResponse;
import com.datn.backend.dto.response.ProductsSummaryResponse;
import com.datn.backend.service.ChartService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/thong-ke")
@RequiredArgsConstructor
public class ThongKeResource {

    private final ChartService chartService;

    @GetMapping("/hoa-don-hoan-thanh")
    public ResponseEntity<Long> countInvoiceComplete() {
        return ResponseEntity.ok(chartService.countInvoiceComplete());
    }

    @GetMapping("/hoa-don-moi")
    public ResponseEntity<Long> countInvoiceWFC() {
        return ResponseEntity.ok(chartService.countInvoiceWFC());
    }

    @GetMapping("/hoa-don-cho-giao")
    public ResponseEntity<Long> countInvoiceWFD() {
        return ResponseEntity.ok(chartService.countInvoiceWFD());
    }

    @GetMapping("/hoa-don-huy")
    public ResponseEntity<Long> countInvoiceEx() {
        return ResponseEntity.ok(chartService.countInvoiceEx());
    }

    @GetMapping("/khach-hang-trong-nam")
    public ResponseEntity<List<Long>> countCustomerCompleteThisYear() {
        return ResponseEntity.ok(chartService.countCustomerInThisYear());
    }

    @GetMapping("/khach-hang-trong-nam-truoc")
    public ResponseEntity<List<Long>> countCustomerCompleteLastYear() {
        return ResponseEntity.ok(chartService.countCustomerInLastYear());
    }

    @GetMapping("/khach-hang-4-tuan-trong-thang")
    public ResponseEntity<List<Long>> countCustomerComplete4WeekThisMonth() {
        return ResponseEntity.ok(chartService.countCustomer4WeekInMonth());
    }

    @GetMapping("/khach-hang-4-tuan-trong-thang-truoc")
    public ResponseEntity<List<Long>> countCustomerComplete4WeekLastMonth() {
        return ResponseEntity.ok(chartService.countCustomer4WeekInLastMonth());
    }

    @GetMapping("/khach-hang-7-ngay-trong-tuan")
    public ResponseEntity<List<Long>> countCustomerComplete7DayThisWeek() {
        return ResponseEntity.ok(chartService.countCustomer7DayThisWeek());
    }

    @GetMapping("/khach-hang-7-ngay-trong-tuan-truoc")
    public ResponseEntity<List<Long>> countCustomerComplete7DayLastWeek() {
        return ResponseEntity.ok(chartService.countCustomer7DayLastWeek());
    }

    @GetMapping("/hoa-don-hoan-thanh-trong-nam")
    public ResponseEntity<List<Long>> countInvoiceCompleteThisYear() {
        return ResponseEntity.ok(chartService.countInvoiceInThisYear());
    }

    @GetMapping("/hoa-don-hoan-thanh-trong-nam-truoc")
    public ResponseEntity<List<Long>> countInvoiceCompleteLastYear() {
        return ResponseEntity.ok(chartService.countInvoiceInLastYear());
    }

    @GetMapping("/hoa-don-hoan-thanh-4-tuan-trong-thang")
    public ResponseEntity<List<Long>> countInvoiceComplete4WeekThisMonth() {
        return ResponseEntity.ok(chartService.countInvoice4WeekInThisMonth());
    }

    @GetMapping("/hoa-don-hoan-thanh-4-tuan-trong-thang-truoc")
    public ResponseEntity<List<Long>> countInvoiceComplete4WeekLastMonth() {
        return ResponseEntity.ok(chartService.countInvoice4WeekInLastMonth());
    }

    @GetMapping("/hoa-don-hoan-thanh-7-ngay-trong-tuan")
    public ResponseEntity<List<Long>> countInvoiceComplete7DayThisWeek() {
        return ResponseEntity.ok(chartService.countInvoice7DayThisWeek());
    }

    @GetMapping("/hoa-don-hoan-thanh-7-ngay-trong-tuan-truoc")
    public ResponseEntity<List<Long>> countInvoiceComplete7DayLastWeek() {
        return ResponseEntity.ok(chartService.countInvoice7DayLastWeek());
    }

    @GetMapping("/san-pham-chi-tiet-dot-giam-gia-trong-nam-bat-ki")
    public ResponseEntity<List<DiscountSummaryResponse>> getMaDotGiamGiaAndNumberOfProductPurchasedCurrentYear(
            @RequestParam(name = "year", required = false) Integer year
    ) {
        return ResponseEntity.ok(chartService.getMaDotGiamGiaAndNumberOfProductPurchasedCurrentYear(year));
    }

    @GetMapping("/san-pham-ban-chay-nam-bat-ki")
    public ResponseEntity<List<ProductsSummaryResponse>> getListProductPurchasedInCurrentYear(
            @RequestParam(name = "year", required = false) Integer year
    ) {
        return ResponseEntity.ok(chartService.getListProductPurchasedInCurrentYear(year));
    }

    @GetMapping("/phieu-giam-gia-su-dung-trong-nam-bat-ki")
    public ResponseEntity<List<CouponsSumarryResponse>> getListCouponsUsedInAnyYear(
            @RequestParam(name = "year", required = false) Integer year
    ) {
        return ResponseEntity.ok(chartService.getListCouponsUsedInAnyYear(year));
    }

    @GetMapping("/doanh-thu-nam-hien-tai")
    public ResponseEntity<List<BigDecimal>> getListSalesInThisYear(
    ) {
        return ResponseEntity.ok(chartService.getListSalesInThisYear());
    }

    @GetMapping("/doanh-thu-nam-truoc")
    public ResponseEntity<List<BigDecimal>> getListSalesInLastYear(
    ) {
        return ResponseEntity.ok(chartService.getListSalesInLastYear());
    }

    @GetMapping("/doanh-thu-thang-hien-tai")
    public ResponseEntity<List<BigDecimal>> getListSalesInThisMonth(
    ) {
        return ResponseEntity.ok(chartService.getListSales4WeekInThisMonth());
    }

    @GetMapping("/doanh-thu-thang-truoc")
    public ResponseEntity<List<BigDecimal>> getListSalesInLastMonth(
    ) {
        return ResponseEntity.ok(chartService.getListSales4WeekInLastMonth());
    }

    @GetMapping("/doanh-thu-tuan-hien-tai")
    public ResponseEntity<List<BigDecimal>> getListSalesInThisWeek(
    ) {
        return ResponseEntity.ok(chartService.getSale7DaysInThisWeek());
    }

    @GetMapping("/doanh-thu-tuan-truoc")
    public ResponseEntity<List<BigDecimal>> getListSalesInLastWeek(
    ) {
        return ResponseEntity.ok(chartService.getSale7DaysInLastWeek());
    }

    @GetMapping("/lay-tat-ca-hoa-don-trong-nam")
    public ResponseEntity<Long> getInvoice(
    ) {
        return ResponseEntity.ok(chartService.countAllInvoiceThisYear());
    }

    @GetMapping("/lay-tat-ca-hoa-don-trong-nam-truoc")
    public ResponseEntity<Long> getInvoicePerYear(
    ) {
        return ResponseEntity.ok(chartService.countAllInvoiceLastYear());
    }

    @GetMapping("/admin-dashboard/kpi")
    public ResponseEntity<AdminDashboardKpiResponse> getAdminDashboardKpi(
            @RequestParam(name = "fromDate", required = false)
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate fromDate,
            @RequestParam(name = "toDate", required = false)
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate toDate
    ) {
        return ResponseEntity.ok(chartService.getAdminDashboardKpi(fromDate, toDate));
    }

    @GetMapping("/admin-dashboard/top-products")
    public ResponseEntity<List<AdminTopProductResponse>> getAdminTopProducts(
            @RequestParam(name = "fromDate", required = false)
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate fromDate,
            @RequestParam(name = "toDate", required = false)
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate toDate,
            @RequestParam(name = "limit", required = false) Integer limit
    ) {
        return ResponseEntity.ok(chartService.getAdminTopProducts(fromDate, toDate, limit));
    }

    @GetMapping("/admin-dashboard/summary")
    public ResponseEntity<AdminDashboardSummaryResponse> getAdminDashboardSummary(
            @RequestParam(name = "fromDate", required = false)
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate fromDate,
            @RequestParam(name = "toDate", required = false)
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate toDate,
            @RequestParam(name = "limit", required = false) Integer limit
    ) {
        return ResponseEntity.ok(chartService.getAdminDashboardSummary(fromDate, toDate, limit));
    }

    @GetMapping("/admin-dashboard/cancellation-rate")
    public ResponseEntity<BigDecimal> getAdminDashboardCancellationRate(
            @RequestParam(name = "fromDate", required = false)
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate fromDate,
            @RequestParam(name = "toDate", required = false)
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate toDate
    ) {
        return ResponseEntity.ok(chartService.getAdminDashboardKpi(fromDate, toDate).getCancellationRate());
    }
}
