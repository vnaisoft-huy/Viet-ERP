# Chính sách Bảo mật / Security Policy

## Phiên bản được hỗ trợ / Supported Versions

| Phiên bản / Version | Hỗ trợ / Supported |
|---------|-----------|
| 1.x     | Có / Yes  |
| < 1.0   | Không / No |

## Báo cáo lỗ hổng / Reporting a Vulnerability

**Vui lòng KHÔNG báo cáo lỗ hổng bảo mật qua GitHub Issues công khai.**
**Please do NOT report security vulnerabilities through public GitHub issues.**

Nếu bạn phát hiện lỗ hổng bảo mật, vui lòng báo cáo có trách nhiệm:

1. Email: security@your-domain.com
2. Mô tả chi tiết lỗ hổng
3. Các bước tái tạo vấn đề
4. Đánh giá tác động tiềm ẩn
5. Đề xuất cách sửa (nếu có)

### Quy trình xử lý / What to Expect

- **Xác nhận**: Trong vòng 48 giờ kể từ khi nhận báo cáo
- **Đánh giá**: Trong vòng 7 ngày, chúng tôi sẽ đánh giá mức độ nghiêm trọng
- **Sửa lỗi**: Lỗ hổng nghiêm trọng sẽ được vá trong vòng 14 ngày
- **Công bố**: Chúng tôi sẽ phối hợp công bố có trách nhiệm với bạn

### Mức độ nghiêm trọng / Severity Levels

| Mức độ / Level | Mô tả / Description | Thời gian phản hồi / Response |
|-------|-------------|---------------|
| Nghiêm trọng / Critical | Thực thi mã từ xa, rò rỉ dữ liệu | 24 giờ |
| Cao / High | Vượt quyền xác thực, leo thang đặc quyền | 72 giờ |
| Trung bình / Medium | XSS, CSRF, lộ thông tin | 7 ngày |
| Thấp / Low | Vấn đề nhỏ, vi phạm best practice | 30 ngày |

## Các biện pháp bảo mật / Security Measures

VietERP Platform triển khai các biện pháp bảo mật sau:

- **Xác thực**: Keycloak SSO với phân quyền RBAC
- **Cơ sở dữ liệu**: 100% Prisma ORM (không có SQL thô) — chống SQL injection
- **Bảo mật API**: Giới hạn tốc độ, CORS, CSP headers, HSTS
- **Quản lý bí mật**: Không có bí mật viết cứng; cấu hình qua .env
- **Phụ thuộc**: Kiểm tra phụ thuộc định kỳ
- **Xác thực đầu vào**: Middleware xác thực request cho tất cả API routes
- **Bảo mật sự kiện**: Sự kiện có phiên bản với khoá idempotency
- **Đa tenant**: Cách ly tenant ở cấp cơ sở dữ liệu và ứng dụng

## Hướng dẫn cho người triển khai / Best Practices for Deployers

1. Luôn sử dụng HTTPS trong production
2. Xoay vòng API key và bí mật thường xuyên
3. Bật tính năng chống brute-force của Keycloak
4. Cấu hình firewall cho truy cập cơ sở dữ liệu
5. Bật ghi log kiểm toán
6. Chạy `npm audit` thường xuyên
7. Cập nhật tất cả phụ thuộc
8. Sử dụng Docker image với user không phải root

## Vinh danh / Hall of Fame

Chúng tôi trân trọng các nhà nghiên cứu bảo mật giúp VietERP an toàn hơn. Các báo cáo có trách nhiệm sẽ được ghi nhận tại đây.

Cảm ơn bạn đã giúp VietERP Platform an toàn.
