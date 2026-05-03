# Bee Shirt Back End

Backend cho hệ thống bán áo Bee Shirt, được xây dựng bằng Spring Boot. Project cung cấp REST API cho các nghiệp vụ quản lý sản phẩm, biến thể sản phẩm, giỏ hàng, khách hàng, nhân viên, hóa đơn, khuyến mãi, thanh toán, thống kê và thông báo thời gian thực.

## Tech Stack

- Java 17
- Spring Boot 3.2.1
- Spring Web, Spring Data JPA, Spring Security
- MySQL
- JWT với `java-jwt`
- Lombok
- ModelMapper
- SpringDoc OpenAPI/Swagger UI
- WebSocket
- Spring Mail
- Cloudinary
- Maven Wrapper

## Cấu Trúc Thư Mục

```text
src/main/java/com/datn/backend
|-- app_configuration   # Bean configuration, CORS, WebSocket, VNPay, scheduling
|-- constant            # Constants dùng chung
|-- dto                 # Request/response DTO
|-- enumeration         # Enum cho business domain
|-- exception           # Global exception handling và custom exception
|-- model               # JPA entity
|-- repository          # Spring Data repository và custom repository
|-- resource            # REST controller
|-- security            # JWT, SecurityFilterChain, UserDetails
|-- service             # Service interface
|-- service/impl        # Service implementation
`-- utility             # Utility/helper dùng chung
```

## Prerequisites

- JDK 17
- MySQL 8.x hoặc phiên bản tương thích
- Maven không bắt buộc cài riêng vì project đã có Maven Wrapper
- Port `8080` đang trống nếu chạy với cấu hình mặc định

## Configuration

File cấu hình chính:

```text
src/main/resources/application.properties
```

Cấu hình tối thiểu cho môi trường local:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/datn-bee-shirt
spring.datasource.username=<mysql_username>
spring.datasource.password=<mysql_password>
spring.jpa.hibernate.ddl-auto=update

jwt.secret=<jwt_secret>

spring.mail.username=<gmail_address>
spring.mail.password=<gmail_app_password>
```

Lưu ý:

- Không commit secret mới vào repository. Với database, email, Cloudinary, VNPay hoặc GHN, ưu tiên dùng environment variables hoặc file cấu hình local nằm ngoài Git.
- Database mặc định của project là `datn-bee-shirt`.
- Hibernate đang dùng `spring.jpa.hibernate.ddl-auto=update`, phù hợp cho development local nhưng cần đánh giá kỹ trước khi dùng ở production.
- CORS hiện cho phép frontend local tại `http://localhost:4200` và `http://localhost:4201`.

## Chạy Local

Trên Windows:

```powershell
.\mvnw.cmd spring-boot:run
```

Trên macOS/Linux:

```bash
./mvnw spring-boot:run
```

Ứng dụng mặc định chạy tại:

```text
http://localhost:8080
```

Swagger UI:

```text
http://localhost:8080/swagger-ui.html
```

## Build Và Test

Build project:

```powershell
.\mvnw.cmd clean package
```

Chạy test:

```powershell
.\mvnw.cmd test
```

Chạy file jar sau khi build:

```powershell
java -jar target\back-end-0.0.1-SNAPSHOT.jar
```

## Docker

Dockerfile hiện tại copy file jar từ `target/back-end-0.0.1-SNAPSHOT.jar`, vì vậy cần build jar trước:

```powershell
.\mvnw.cmd clean package
docker build -t bee-shirt-backend .
docker run --rm -p 8080:8080 bee-shirt-backend
```

Nếu application trong container cần kết nối MySQL trên host machine, cần cấu hình lại datasource phù hợp với Docker network.

## Nhóm API Chính

Một số base path đang có trong package `resource`:

| Nhóm nghiệp vụ | Base path |
| --- | --- |
| Authentication | `/auth` |
| Cart | `/cart` |
| Product | `/san-pham` |
| Product details | `/spct` |
| Color | `/mau-sac` |
| Size | `/kich-co` |
| Material | `/chat-lieu` |
| Collar | `/co-ao` |
| Sleeve | `/tay-ao` |
| Style | `/kieu-dang` |
| Design | `/thiet-ke` |
| Customer | `/khach-hang` |
| Staff | `/nhan-vien` |
| Address | `/dia-chi` |
| Order | `/hoa-don` |
| Order details | `/hoa-don-chi-tiet` |
| Return order | `/tra-hang` |
| Coupon | `/phieu-giam-gia` |
| Sale campaign | `/dot-giam-gia` |
| Payment | `/thanh-toan` |
| Dashboard/Statistics | `/thong-ke` |
| Notification | `/api/notification` |

WebSocket endpoints:

```text
/notification
/notification2
```

## Return/Refund Workflow

Nhóm API `\`/tra-hang\`` đã hỗ trợ luồng duyệt yêu cầu trả hàng/hoàn tiền:

- `POST /tra-hang/tao-hoa-don-tra-hang`: Khách tạo yêu cầu trả hàng (trạng thái `CHO_DUYET`).
- `GET /tra-hang/yeu-cau?trangThai=`: Admin/nhân viên lấy danh sách yêu cầu (có thể lọc trạng thái).
- `PUT /tra-hang/cap-nhat-trang-thai`: Duyệt/từ chối/chuyển bước workflow.

Giá trị `trangThai` hợp lệ trong workflow:

- `CHO_DUYET`
- `DA_DUYET`
- `TU_CHOI`
- `CHO_HOAN_TIEN`
- `DA_HOAN_TIEN`
- `HOAN_TAT`

## Development Workflow

1. Tạo branch riêng cho mỗi feature hoặc bugfix.
2. Cập nhật code theo đúng layer hiện có: `resource` -> `service` -> `repository` -> `model/dto`.
3. Thêm validation vào request DTO khi nhận input từ client.
4. Không trả entity trực tiếp nếu API cần contract ổn định; ưu tiên response DTO.
5. Chạy `.\mvnw.cmd test` trước khi tạo pull request.
6. Không commit `target/`, file IDE local, log, credential hoặc file cấu hình riêng của máy.

## Security Notes

- `SecurityConfiguration` hiện đang `permitAll()` cho tất cả request. Nếu deploy lên môi trường thật, cần bật lại authorization rule theo role và endpoint.
- JWT filter đã được gắn vào filter chain, nhưng các `requestMatchers` theo role đang được comment.
- Các credential đang hard-code trong một số file cấu hình cần được tách sang environment variables trước khi deploy production.
