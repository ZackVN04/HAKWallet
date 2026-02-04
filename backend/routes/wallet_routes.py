from flask import Blueprint, request, jsonify

# Middleware JWT
from core.jwt_middleware import jwt_required

# Service xử lý nghiệp vụ
from services.wallet_service import WalletService

wallet_bp = Blueprint("wallet", __name__)

@wallet_bp.route("", methods=["POST"])
@jwt_required  # ✅ BẮT BUỘC PHẢI CÓ
def create_wallet():
    """
    POST /api/wallets
    Header:
        Authorization: Bearer <token>
    Body:
        {
            "eth_address": "0x...",
            "network": "sepolia"
        }
    """

    try:
        data = request.get_json()

        # ✅ LẤY user_id TỪ JWT MIDDLEWARE
        user_id = request.user_id

        result = WalletService.create_wallet(
            user_id=user_id,
            eth_address=data.get("eth_address"),
            network=data.get("network")
        )

        return jsonify(result), result["status"]

    except Exception as e:
        print("CREATE WALLET ERROR:", e)
        return jsonify({
            "error": str(e)
        }), 500
