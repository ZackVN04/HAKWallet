Võ Văn Khanh - 223364
# Backend – HAKWallet

Backend sử dụng **Flask (Python)**, chịu trách nhiệm:
- Giao tiếp với **Ethereum Sepolia** qua **Alchemy**
- Cung cấp REST API cho Flutter
- Lưu & đọc dữ liệu giao dịch từ **PostgreSQL**

---

## 🛠 Tech Stack
- Python 3.14
- Flask 3.x
- Flask-CORS
- psycopg2-binary
- PostgreSQL
- Alchemy (Ethereum Sepolia)

---

## 📂 Cấu trúc thư mục

backend/
├── app.py              # Entry point Flask
├── requirements.txt    # Thư viện Python
├── .env                # Biến môi trường (KHÔNG COMMIT)
├── .env.example        # File mẫu cho team
├── test_db.py          # Test kết nối DB
├── venv/               # Virtual environment
└── README_backend.md

---

## ⚙️ Setup Backend (Lần đầu)

### 1️⃣ Tạo virtual environment
```bash
cd backend
python -m venv venv
venv\Scripts\activate

pip install -r requirements.txt

