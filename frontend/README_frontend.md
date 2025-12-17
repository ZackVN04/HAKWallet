Nguyễn Châu Trường Huy

---

# 📁 `frontend/README_frontend.md`

```md
# Frontend – HAKWallet

Frontend sử dụng **Flutter**, chịu trách nhiệm:
- Giao diện ví Ethereum
- Tạo / import ví bằng mnemonic
- Ký transaction
- Gọi API backend

---

## 🛠 Tech Stack
- Flutter
- Provider
- web3dart
- bip39
- ethereum_hd_wallet (BIP44)
- flutter_secure_storage
- http

---

## 📂 Cấu trúc chính

frontend/
├── lib/
│   ├── screens/        # UI các màn hình
│   ├── providers/      # State management
│   ├── services/       # Gọi API backend
│   ├── widgets/        # Component dùng chung
│   └── main.dart
├── pubspec.yaml
└── README_frontend.md

---

## ▶️ Setup & Chạy Flutter

### 1️⃣ Cài dependency
```bash
cd frontend
flutter pub get
