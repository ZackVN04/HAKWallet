
# HAKWallet – Ethereum Mini Wallet

## Tech Stack
- Flutter
- Flask (Python)
- PostgreSQL
- Ethereum Sepolia
- Alchemy

## Team
- Huy – Frontend
- Khanh – Backend
- Huyền Anh – Database

## How to run
### Backend
cd backend
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
python app.py

### Frontend
cd frontend
flutter pub get
flutter run


```
backend
├── .env
├── .env.example
├── README_backend.md
├── __pycache__
├── app.py
├── check_env.py
├── core
│   ├── __init__.py
│   ├── __pycache__
│   ├── alchemy_client.py
│   ├── jwt_middleware.py
│   ├── security.py
│   └── supabase.py
├── middlewares
│   └── auth_middleware.py
├── repositories
│   ├── __init__.py
│   ├── __pycache__
│   ├── transaction_repository
│   ├── user_repository.py
│   └── wallet_repository.py
├── requirements.txt
├── routes
│   ├── __init__.py
│   ├── __pycache__
│   ├── auth_routes.py
│   ├── balance_routes.py
│   ├── transaction_routes.py
│   ├── user_routes.py
│   └── wallet_routes.py
├── services
│   ├── __init__.py
│   ├── __pycache__
│   ├── auth_service.py
│   ├── balance_service.py
│   ├── transaction_service.py
│   └── wallet_service.py
├── test_db.py
└── venv

frontend
lib
├── app.dart
├── core
│   ├── constants.dart
│   ├── routes.dart
│   └── theme.dart
├── main.dart
├── models
│   └── transaction_model.dart
├── providers
│   ├── theme_provider.dart
│   ├── user_provider.dart
│   └── wallet_provider.dart
├── screens
│   ├── auth
│   │   ├── login_screen.dart
│   │   └── register_screen.dart
│   ├── create_wallet
│   │   └── create_wallet_screen.dart
│   ├── history
│   │   └── history_screen.dart
│   ├── home
│   │   └── home_screen.dart
│   ├── import_wallet
│   │   └── import_wallet_screen.dart
│   ├── send
│   │   └── send_screen.dart
│   ├── settings
│   │   └── settings_screen.dart
│   └── verify_mnemonic
│       └── verify_mnemonic_screen.dart
├── services
│   ├── api_service.dart
│   └── wallet_service.dart
└── widgets
    └── responsive_layout.dart