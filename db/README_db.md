
---

# 📁 `db/README_db.md`

```md
# Database – HAKWallet

Database sử dụng **PostgreSQL**, lưu trữ:
- Ví người dùng
- Lịch sử giao dịch
- Metadata token (mở rộng)

---

## 🛠 Tech Stack
- PostgreSQL 18
- SQL Migration

---

## 📂 Cấu trúc thư mục

db/
├── migrations/
│   └── 001_init.sql    # Migration tạo bảng
├── ERD.png             # Sơ đồ CSDL (sẽ bổ sung)
└── README_db.md

---

## 🗄️ Các bảng chính

### 1️⃣ wallets
- wallet_address (unique)
- created_at

### 2️⃣ tx_history
- wallet_address
- tx_hash
- from
- to
- value_wei
- gas_used
- gas_price
- status
- block_number
- timestamp

### 3️⃣ token_metadata
- token_address (PK)
- symbol
- decimals
- name
- logo_url

---

## ▶️ Chạy Migration

```bash
psql -U wallet_user -d walletdb -f db/migrations/001_init.sql
