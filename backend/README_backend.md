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





1️⃣ fastapi

👉 Framework backend chính
👉 Dùng để tạo API (@app.post, APIRouter, …)

pip install fastapi

2️⃣ uvicorn

👉 Server để chạy FastAPI
👉 Thiếu nó thì backend không chạy được (lỗi bạn đang gặp)

pip install uvicorn

3️⃣ psycopg2-binary

👉 Kết nối PostgreSQL (Supabase)
👉 Dùng cho DB_URL=postgresql://...

pip install psycopg2-binary

4️⃣ bcrypt

👉 Mã hóa mật khẩu
👉 Register / Login đều cần

pip install bcrypt

5️⃣ python-dotenv

👉 Đọc file .env
👉 Lấy DB_URL, ALCHEMY_URL

pip install python-dotenv

✅ LỆNH CÀI GỘP (KHUYẾN NGHỊ)

Chạy 1 lệnh duy nhất (đang ở (venv)):

pip install fastapi uvicorn psycopg2-binary bcrypt python-dotenv

📄 requirements.txt CHUẨN (NÊN CÓ)

Mở backend/requirements.txt, ghi đúng:

fastapi
uvicorn
psycopg2-binary
bcrypt
python-dotenv


Sau này chỉ cần:

pip install -r requirements.txt

🔍 KIỂM TRA ĐÃ CÀI CHƯA
pip list


Hoặc kiểm tra từng cái:

pip show fastapi
pip show uvicorn
pip show psycopg2-binary
pip show bcrypt
pip show python-dotenv

▶️ CHẠY BACKEND (NHỚ DÒNG NÀY)
python -m uvicorn app:app --reload