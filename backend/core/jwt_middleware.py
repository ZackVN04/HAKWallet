from functools import wraps
from flask import request, jsonify
from core.security import verify_token

def jwt_required(fn):
    @wraps(fn)
    def wrapper(*args, **kwargs):
        # Lấy Authorization header
        auth_header = request.headers.get("Authorization")

        # Kiểm tra header tồn tại & đúng format
        if not auth_header or not auth_header.startswith("Bearer "):
            return jsonify({
                "error": "Missing or invalid Authorization header"
            }), 401

        # Tách token
        token = auth_header.split(" ")[1]

        try:
            # Giải mã JWT
            payload = verify_token(token)

            # ✅ GẮN user_id VÀO REQUEST
            request.user_id = payload["user_id"]

        except Exception:
            return jsonify({
                "error": "Invalid or expired token"
            }), 401

        # Cho request đi tiếp
        return fn(*args, **kwargs)

    return wrapper
