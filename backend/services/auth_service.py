import bcrypt
from repositories.user_repository import UserRepository
from core.security import verify_password, generate_token
from repositories.login_history_repository import LoginHistoryRepository


class AuthService:

    @staticmethod
    def register(email, password):
        if not email or not password:
            return {
                "error": "Missing email or password",
                "status": 400
            }

        existing = UserRepository.find_by_email(email)
        if existing:
            return {
                "error": "Email already exists",
                "status": 409
            }

        password_hash = bcrypt.hashpw(
            password.encode("utf-8"),
            bcrypt.gensalt()
        ).decode("utf-8")

        UserRepository.create_user(email, password_hash)

        return {
            "message": "Register success",
            "status": 201
        }

    # =========================
    # LOGIN  ✅ PHẢI NẰM TRONG CLASS
    # =========================
    @staticmethod
    def login(email, password, ip=None, ua=None):
        if not email or not password:
            return {
                "error": "Missing email or password",
                "status": 400
            }

        user = UserRepository.find_by_email(email)
        if not user:
            return {
                "error": "Email not found",
                "status": 404
            }

        if user["status"] != "active":
            return {
                "error": "Account is disabled",
                "status": 403
            }

        # ❌ Sai password → log FAILED
        if not verify_password(password, user["password_hash"]):
            LoginHistoryRepository.log(
                user_id=user["user_id"],
                ip_address=ip,
                device_info=ua,
                is_success=False
            )
            return {
                "error": "Invalid password",
                "status": 401
            }

        # ✅ Login thành công → log SUCCESS
        LoginHistoryRepository.log(
            user_id=user["user_id"],
            ip_address=ip,
            device_info=ua,
            is_success=True
        )

        token = generate_token(str(user["user_id"]))
        return {
            "message": "Login success",
            "token": token,
            "user": {
                "user_id": user["user_id"],
                "email": user["email"]
            },
            "status": 200
        }
