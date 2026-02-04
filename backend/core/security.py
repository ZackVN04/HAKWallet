import bcrypt
import jwt
import os
from datetime import datetime, timedelta

JWT_SECRET = os.getenv("JWT_SECRET")
JWT_EXPIRE_SECONDS = int(os.getenv("JWT_EXPIRE_SECONDS", 86400))

def hash_password(password: str) -> str:
    """
    Hash password để lưu DB
    """
    password_bytes = password.encode("utf-8")
    hashed = bcrypt.hashpw(password_bytes, bcrypt.gensalt())
    return hashed.decode("utf-8")


def verify_password(plain_password: str, hashed_password: str) -> bool:
    """
    So sánh password nhập vào với password hash trong DB
    """
    return bcrypt.checkpw(
        plain_password.encode("utf-8"),
        hashed_password.encode("utf-8")
    )


# ================= JWT =================

def generate_token(user_id: str) -> str:
    payload = {
        "user_id": user_id,
        "exp": datetime.utcnow() + timedelta(seconds=JWT_EXPIRE_SECONDS),
        "iat": datetime.utcnow()
    }

    return jwt.encode(payload, JWT_SECRET, algorithm="HS256")


def verify_token(token: str):
    return jwt.decode(
        token,
        JWT_SECRET,
        algorithms=["HS256"]
    )