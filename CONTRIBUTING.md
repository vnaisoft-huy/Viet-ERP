# Hướng dẫn Đóng góp / Contributing to VietERP Platform

Cảm ơn bạn đã quan tâm đến VietERP! Tài liệu này sẽ giúp bạn bắt đầu đóng góp.

Thank you for your interest in contributing to VietERP! This guide will help you get started.

## Bắt đầu / Getting Started

1. Fork kho mã nguồn / Fork the repository
2. Clone về máy: `git clone https://github.com/YOUR-USERNAME/Viet-ERP.git`
3. Tạo nhánh tính năng: `git checkout -b feature/tinh-nang-moi`
4. Cài đặt thư viện: `npm install --legacy-peer-deps`
5. Khởi động hạ tầng: `docker compose up -d`

## Quy trình phát triển / Development Workflow

### Quy ước đặt tên nhánh / Branch Naming

- `feature/` — Tính năng mới (vd: `feature/crm-nhap-hang-loat`)
- `fix/` — Sửa lỗi (vd: `fix/tinh-thue-sai`)
- `docs/` — Thay đổi tài liệu
- `refactor/` — Tái cấu trúc mã
- `test/` — Bổ sung hoặc sửa kiểm thử

### Quy ước commit / Commit Messages

Chúng tôi tuân theo quy ước Conventional Commits:

```
<type>(<scope>): <mô tả>

[nội dung tuỳ chọn]
```

Loại (type): `feat`, `fix`, `docs`, `refactor`, `test`, `chore`, `perf`, `ci`

Phạm vi (scope): `hrm`, `crm`, `mrp`, `accounting`, `ecommerce`, `otb`, `tpm`, `pm`, `core`, `events`, `auth`, `branding`

Ví dụ:
```
feat(crm): thêm nhập khách hàng hàng loạt qua CSV
fix(accounting): sửa tính thuế TT200 cho quý 4
docs(branding): cập nhật hướng dẫn cá nhân hoá thương hiệu
refactor(events): chuyển DLQ sang typed event schemas
```

### Quy trình Pull Request

1. Đảm bảo kiểm thử đạt: `npx turbo test`
2. Đảm bảo kiểm tra kiểu đạt: `npx turbo typecheck`
3. Đảm bảo lint đạt: `npx turbo lint`
4. Cập nhật tài liệu nếu cần
5. Tạo pull request với mô tả rõ ràng
6. Liên kết các issue liên quan

## Tiêu chuẩn mã nguồn / Code Standards

### TypeScript

- Sử dụng TypeScript nghiêm ngặt — tránh kiểu `any`
- Export interface cho các API công khai
- Sử dụng kiểu Prisma cho database models
- Ưu tiên `const` thay vì `let`

### Tổ chức tệp / File Organization

- Đặt tệp kiểm thử cạnh mã nguồn (vd: `utils.ts` + `utils.test.ts`)
- Sử dụng barrel exports (`index.ts`) cho các packages
- Tuân theo quy ước Next.js App Router cho route files

### Giao diện / Styling

- Sử dụng Tailwind CSS cho toàn bộ giao diện
- Tuân theo design tokens trong `packages/branding`
- Hỗ trợ chế độ tối (dark mode) khi có thể

### Đa ngôn ngữ / Internationalization

- Tất cả chuỗi hiển thị cho người dùng phải sử dụng hệ thống label song ngữ từ `@vierp/branding`
- Định dạng: "Tiếng Việt / English" cho chế độ song ngữ
- Không viết cứng văn bản UI trực tiếp trong component

## Kiểm thử / Testing

```bash
# Kiểm thử đơn vị
npx turbo test

# Kiểm thử E2E
npx turbo test:e2e

# Kiểm thử module cụ thể
npx turbo test --filter=CRM
```

- Viết kiểm thử cho mọi tính năng mới
- Duy trì độ phủ kiểm thử hiện tại
- Kiểm thử E2E cho các luồng người dùng quan trọng

## Báo cáo lỗi / Reporting Issues

Sử dụng GitHub Issues với các mẫu được cung cấp:
- **Báo cáo lỗi / Bug Report**: Cho các lỗi và hành vi bất thường
- **Yêu cầu tính năng / Feature Request**: Cho tính năng mới và cải tiến

Bao gồm: các bước tái tạo, hành vi mong đợi so với thực tế, ảnh chụp màn hình nếu có.

## Quy tắc ứng xử / Code of Conduct

Dự án này tuân theo Quy tắc ứng xử. Xem [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md).

## Câu hỏi / Questions

Nếu bạn có câu hỏi, vui lòng mở GitHub Discussion hoặc tạo issue.

Cảm ơn bạn đã đóng góp cho VietERP Platform!
