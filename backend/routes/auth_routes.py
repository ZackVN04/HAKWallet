from flask import Blueprint, request, jsonify
from services.auth_service import AuthService

auth_bp = Blueprint("auth", __name__)

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
        print("REGISTER ERROR:", e)
        return jsonify({
            "error": str(e)
        }), 500



@auth_bp.route("/login", methods=["POST"])
def login():
    try:
        data = request.get_json()

        result = AuthService.login(
            email=data.get("email"),
            password=data.get("password")
        )

        return jsonify(result), result["status"]

    except Exception as e:
        print("LOGIN ERROR:", e)
        return jsonify({
            "error": str(e)
        }), 500