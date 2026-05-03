# AGENTS.md

Tài liệu này dành cho AI agent và contributor làm việc trong repository `bee-shirt/back-end`.

## Scope

- Đây là backend Spring Boot Java 17 dùng Maven Wrapper.
- Khu vực làm việc chính là `src/main/java/com/datn/backend`.
- Không chỉnh sửa build output trong `target/`.
- Không commit secret, credential, token, password, API key hoặc thông tin tài khoản mới.

## Commands

Windows:

```powershell
.\mvnw.cmd spring-boot:run
.\mvnw.cmd test
.\mvnw.cmd clean package
```

macOS/Linux:

```bash
./mvnw spring-boot:run
./mvnw test
./mvnw clean package
```

Docker:

```powershell
.\mvnw.cmd clean package
docker build -t bee-shirt-backend .
docker run --rm -p 8080:8080 bee-shirt-backend
```

## Architecture Và Convention

- `resource`: REST controller, chỉ xử lý HTTP request/response và gọi service.
- `service`: service interface mô tả business capability.
- `service/impl`: service implementation, xử lý business logic, transaction và validation liên quan nhiều repository.
- `repository`: database access thông qua Spring Data JPA hoặc custom repository.
- `model`: JPA entity.
- `dto/request`: input contract từ client.
- `dto/response`: response contract trả về cho client.
- `exception`: custom exception và error response.
- `security`: JWT, authentication và authorization.
- `app_configuration`: bean và infrastructure configuration.

Khi thêm feature mới:

1. Thêm hoặc cập nhật DTO trước nếu API contract thay đổi.
2. Thêm endpoint trong `resource` theo base path hiện có.
3. Đặt business logic trong service, không đặt logic lớn trong controller.
4. Repository chỉ phụ trách query và persistence.
5. Dùng custom exception hiện có trong `exception/custom_exception` nếu phù hợp.
6. Cập nhật README nếu thay đổi cách chạy, configuration, endpoint quan trọng hoặc dependency.

## Coding Standard

- Giữ style Java/Spring Boot hiện có của project.
- Ưu tiên constructor injection với `@RequiredArgsConstructor`.
- Dùng Lombok nhất quán với code hiện tại.
- Dùng DTO cho API boundary, hạn chế expose entity trực tiếp ở endpoint mới.
- Thêm Bean Validation cho request DTO khi có rule bắt buộc.
- Tên package, class và method cần rõ business intent; giữ naming style đang có trong module liên quan.
- Không refactor rộng ngoài phạm vi task.
- Không format hàng loạt nếu task không yêu cầu.

## Database Và Schema

- Project hiện dùng Hibernate `ddl-auto=update`.
- Trước khi thay đổi entity, kiểm tra tác động tới database hiện có.
- Không xóa hoặc đổi tên column, table, relationship nếu chưa có yêu cầu rõ ràng.
- Nếu schema change có rủi ro mất dữ liệu, ghi rõ trong final note hoặc pull request.

## Security Và Configuration

- Không ghi credential thật vào README, AGENTS hoặc code mới.
- Nếu gặp secret đang tồn tại trong source, không copy lại vào tài liệu hoặc comment mới.
- Nếu cần thêm configuration mới, ưu tiên property placeholder hoặc environment variable.
- Cẩn thận với các module liên quan:
  - JWT và Spring Security trong `security`.
  - Cloudinary trong `app_configuration/ApplicationConfiguration.java`.
  - Mail trong `application.properties`.
  - VNPay trong `app_configuration`.
  - GHN trong service thanh toán/vận chuyển.

## Test Và Verification

Với thay đổi logic Java, chạy tối thiểu:

```powershell
.\mvnw.cmd test
```

Với thay đổi build hoặc dependency, chạy:

```powershell
.\mvnw.cmd clean package
```

Với thay đổi API, kiểm tra Swagger tại:

```text
http://localhost:8080/swagger-ui.html
```

Nếu không thể chạy test do thiếu database, secret hoặc external service, ghi rõ lý do và command đã thử.

## Git Hygiene

- Kiểm tra worktree trước khi sửa nếu có thể.
- Không revert thay đổi của người khác nếu không được yêu cầu rõ.
- Không commit `target/`, file IDE, log hoặc file cấu hình local.
- Giữ change set nhỏ, có mục đích rõ ràng và dễ review.

## Checklist Trước Khi Hoàn Tất

- Code build được hoặc đã ghi rõ lý do chưa verify được.
- Endpoint mới có request/response DTO phù hợp.
- Business error được xử lý bằng exception/response thống nhất.
- Không thêm secret vào source.
- README được cập nhật nếu có thay đổi cách configuration hoặc cách chạy project.
