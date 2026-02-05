from flask import Blueprint, request, jsonify
from services.auth_service import AuthService

auth_bp = Blueprint("auth", __name__)

# =========================
# REGISTER
# =========================
@auth_bp.route("/register", methods=["POST"])
def register():
    try:
        data = request.get_json()

        result = AuthService.register(
            email=data.get("email"),
            password=data.get("password")
        )

        return jsonify(result), result["status"]

    except Exception as e:
        # ❗ Giữ log lỗi server
        print("REGISTER ERROR:", e)
        return jsonify({
            "error": "Internal server error"
        }), 500


# =========================
# LOGIN
# =========================
@auth_bp.route("/login", methods=["POST"])
def login():
    try:
        data = request.get_json()

        ip = request.remote_addr
        ua = request.headers.get("User-Agent")

        result = AuthService.login(
            email=data.get("email"),
            password=data.get("password"),
            ip=ip,
            ua=ua
        )

        return jsonify(result), result["status"]

    except Exception as e:
        print("LOGIN ERROR:", e)
        return jsonify({
            "error": "Internal server error"
        }), 500
