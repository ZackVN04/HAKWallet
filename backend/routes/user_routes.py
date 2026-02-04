from flask import Blueprint, jsonify, request
from core.jwt_middleware import jwt_required

user_bp = Blueprint("user", __name__)

@user_bp.route("/me", methods=["GET"])
@jwt_required
def get_profile():
    return jsonify({
        "message": "Access granted",
        "user_id": request.user_id
    }), 200
