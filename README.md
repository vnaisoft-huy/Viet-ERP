# VietERP Platform

**Nền tảng ERP mã nguồn mở cho doanh nghiệp Việt Nam / Open-source ERP platform for Vietnamese enterprises**

VietERP Platform là hệ sinh thái ERP toàn diện, đạt chuẩn doanh nghiệp, được xây dựng bằng công nghệ web hiện đại. Thiết kế riêng cho thị trường Việt Nam với giao diện song ngữ Việt-Anh, tuân thủ kế toán VAS (TT200), tích hợp hoá đơn điện tử, cổng thanh toán và vận chuyển nội địa.

VietERP Platform is a comprehensive, enterprise-grade ERP ecosystem built with modern web technologies. Designed specifically for the Vietnamese market with bilingual Vi-En support, VAS accounting compliance (TT200), e-Invoice integration, and local payment/shipping gateways.

## Tổng quan / Overview

| Chỉ số / Metric | Giá trị / Value |
|--------|-------|
| Tổng LOC / Total LOC | 738,518 |
| Mã nguồn / Source Code | 620,510 LOC |
| Ứng dụng / Applications | 14 modules |
| Gói chia sẻ / Shared Packages | 20 |
| Prisma Models | 970 |
| API Routes | 1,256 |
| Tệp kiểm thử / Test Files | 706 |

### Phân bổ mã nguồn / Code Breakdown

| Ngôn ngữ / Language | LOC | Tệp / Files |
|---|---|---|
| TypeScript (.ts) | 331,213 | 4,564 |
| React TSX (.tsx) | 160,948 | — |
| JavaScript (.js/.jsx) | 27,708 | — |
| CSS / Tailwind | 47,417 | — |
| Prisma Schema | 36,455 | 13 |
| SQL Migrations | 16,769 | 34 |
| JSON / YAML Config | 29,808 | — |
| Markdown Docs | 88,200 | 217 |

## Các module / Modules

| Module | Mô tả / Description |
|--------|-------------|
| **HRM** | Quản lý nhân sự / Human Resource Management |
| **HRM-AI** | Nhân sự tích hợp AI / AI-powered HRM |
| **HRM-Unified** | Nhân sự hợp nhất / Unified HRM |
| **CRM** | Quản lý khách hàng / Customer Relationship Management |
| **MRP** | Quản lý sản xuất / Manufacturing Resource Planning |
| **Accounting** | Kế toán (tuân thủ TT200) / Accounting (TT200 compliant) |
| **Ecommerce** | Thương mại điện tử / E-Commerce platform |
| **OTB** | Kế hoạch mua hàng / Open-To-Buy Planning |
| **TPM** | Quản lý khuyến mãi / Trade Promotion Management |
| **PM** | Quản lý dự án / Project Management |
| **ExcelAI** | Phân tích Excel bằng AI / AI-powered Excel Analysis |
| **Admin** | Quản trị hệ thống / System Administration |
| **Docs** | Tài liệu / Documentation portal |

## Công nghệ / Tech Stack

- **Frontend**: Next.js 14, React 18, TypeScript 5, Tailwind CSS
- **Backend**: Next.js API Routes, Prisma ORM, PostgreSQL 16
- **Sự kiện / Messaging**: NATS JetStream (kiến trúc hướng sự kiện)
- **Xác thực / Auth**: Keycloak SSO + RBAC
- **Cổng API / Gateway**: Kong API Gateway
- **Bộ nhớ đệm / Cache**: Redis
- **Build**: Turborepo + npm workspaces
- **Kiểm thử / Testing**: Vitest + Playwright (E2E)

## Bắt đầu nhanh / Quick Start

### Yêu cầu / Prerequisites

- Node.js >= 20.x LTS
- npm >= 10.x
- PostgreSQL 16
- Redis 7
- Docker & Docker Compose (khuyến nghị / recommended)

### Cài đặt / Installation

```bash
# Clone kho mã nguồn / Clone repository
git clone https://github.com/nclamvn/Viet-ERP.git
cd Viet-ERP

# Cài đặt thư viện / Install dependencies
npm install --legacy-peer-deps

# Khởi động hạ tầng / Start infrastructure services
docker compose up -d

# Thiết lập môi trường / Setup environment
cp .env.example .env
# Sửa .env theo cấu hình của bạn / Edit .env with your configuration

# Chạy migration cơ sở dữ liệu / Run database migrations
npx turbo db:generate
npx turbo db:push

# Tạo dữ liệu mẫu / Seed sample data
npx turbo db:seed

# Khởi động phát triển / Start development
npx turbo dev --concurrency=25
```

### Docker Compose (Toàn bộ hạ tầng / Full Stack)

```bash
docker compose --profile full up -d
```

Khởi động tất cả dịch vụ hạ tầng: PostgreSQL, Redis, NATS, Keycloak, Kong.

## Cấu trúc dự án / Project Structure

```
Viet-ERP/
├── apps/                    # Các ứng dụng / Application modules
│   ├── Accounting/          # Kế toán
│   ├── CRM/                 # Khách hàng
│   ├── Ecommerce/           # Thương mại điện tử
│   ├── ExcelAI/             # Phân tích Excel AI
│   ├── HRM/                 # Nhân sự
│   ├── HRM-AI/              # Nhân sự + AI
│   ├── HRM-unified/         # Nhân sự hợp nhất
│   ├── MRP/                 # Sản xuất
│   ├── OTB/                 # Kế hoạch mua hàng
│   ├── PM/                  # Quản lý dự án
│   ├── TPM-api/             # TPM Backend
│   ├── TPM-api-nestjs/      # TPM Backend (NestJS)
│   ├── TPM-web/             # TPM Frontend
│   └── docs/                # Tài liệu
├── packages/                # Thư viện chia sẻ / Shared libraries
│   ├── admin/               # Tiện ích quản trị
│   ├── ai-copilot/          # Tích hợp AI
│   ├── api-middleware/       # Middleware API
│   ├── auth/                # Xác thực
│   ├── branding/            # Cấu hình thương hiệu
│   ├── cache/               # Bộ nhớ đệm Redis
│   ├── database/            # Tiện ích cơ sở dữ liệu
│   ├── errors/              # Xử lý lỗi
│   ├── events/              # Hệ thống sự kiện NATS + DLQ
│   ├── feature-flags/       # Cờ tính năng
│   ├── health/              # Kiểm tra sức khoẻ
│   ├── i18n/                # Đa ngôn ngữ
│   ├── logger/              # Ghi log có cấu trúc
│   ├── master-data/         # Quản lý dữ liệu chủ
│   ├── notifications/       # Dịch vụ thông báo
│   ├── saas/                # SaaS đa tenant
│   ├── sdk/                 # SDK nền tảng
│   ├── security/            # Tiện ích bảo mật
│   ├── shared/              # Tiện ích dùng chung
│   └── tpm-shared/          # Kiểu dữ liệu TPM chia sẻ
├── infrastructure/          # K8s, Terraform, cấu hình
├── scripts/                 # Script xây dựng & tiện ích
├── docker-compose.yml       # Dịch vụ hạ tầng
├── turbo.json               # Cấu hình Turborepo
├── BRANDING.md              # Hướng dẫn cá nhân hoá thương hiệu
├── CONTRIBUTING.md          # Hướng dẫn đóng góp
├── SECURITY.md              # Chính sách bảo mật
├── CODE_OF_CONDUCT.md       # Quy tắc ứng xử cộng đồng
└── LICENSE                  # Giấy phép MIT
```

## Cá nhân hoá thương hiệu / White-Label

VietERP được thiết kế để dễ dàng cá nhân hoá thương hiệu. Toàn bộ thông tin branding được quản lý tập trung tại `packages/branding/`:

```bash
# 1. Sửa cấu hình thương hiệu
# Chỉnh sửa packages/branding/src/config.ts

# 2. Chạy script tái thương hiệu tự động
npx ts-node scripts/rebrand.ts --dry-run   # Xem trước thay đổi / Preview
npx ts-node scripts/rebrand.ts             # Áp dụng / Apply

# 3. Build lại toàn bộ
npx turbo build
```

Xem [BRANDING.md](./BRANDING.md) để biết hướng dẫn chi tiết.

## Tính năng thị trường Việt Nam / Vietnamese Market Features

- Tuân thủ kế toán VAS (Thông tư 200 / TT200)
- Tích hợp hoá đơn điện tử (Nghị định 123 / NĐ123)
- Cổng thanh toán: VNPay, MoMo, ZaloPay
- Vận chuyển: GHN, GHTK, Viettel Post
- Giao diện song ngữ Việt-Anh (tuỳ chỉnh được)
- Tính thuế và báo cáo thuế Việt Nam

## Phát triển / Development

```bash
# Chạy tất cả ứng dụng ở chế độ phát triển
npx turbo dev --concurrency=25

# Chạy riêng một ứng dụng
npx turbo dev --filter=CRM

# Chạy kiểm thử
npx turbo test

# Chạy kiểm thử E2E
npx turbo test:e2e

# Build toàn bộ
npx turbo build

# Kiểm tra lint
npx turbo lint

# Kiểm tra kiểu dữ liệu
npx turbo typecheck
```

### Bảng port các ứng dụng / Application Ports

| Ứng dụng / App | Port | Framework |
|---|---|---|
| HRM | 3001 | Next.js |
| HRM-AI | 3002 | Next.js |
| HRM-Unified | 3003 | Next.js |
| MRP | 3005 | Next.js |
| Accounting | 3007 | Next.js |
| Ecommerce | 3008 | Next.js |
| OTB | 3009 | Next.js |
| TPM-API (NestJS) | 3010 | NestJS |
| Docs | 3011 | Next.js |
| CRM | 3018 | Next.js |
| PM | 5173 | Vite |
| ExcelAI | 5174 | Vite |
| TPM-Web | 5180 | Vite |

## Đóng góp / Contributing

Chúng tôi hoan nghênh mọi đóng góp! Xem [CONTRIBUTING.md](./CONTRIBUTING.md) để biết hướng dẫn.

## Bảo mật / Security

Để báo cáo lỗ hổng bảo mật, vui lòng xem [SECURITY.md](./SECURITY.md).

## Giấy phép / License

Dự án này được cấp phép theo giấy phép MIT. Xem [LICENSE](./LICENSE) để biết chi tiết.

---

Được xây dựng với tâm huyết cho doanh nghiệp Việt Nam.
Built with care for Vietnamese enterprises.
