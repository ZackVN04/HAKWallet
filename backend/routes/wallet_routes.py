from flask import Blueprint, request, jsonify

# JWT middleware để xác thực user
from core.jwt_middleware import jwt_required

# Service xử lý nghiệp vụ wallet
from services.wallet_service import WalletService

# Khai báo blueprint cho wallet
wallet_bp = Blueprint("wallet", __name__)


@wallet_bp.route("", methods=["POST"])
@jwt_required
def create_wallet():
    """
    POST /api/wallets
    Tạo wallet mới cho user đang đăng nhập
    """
    try:
        # Lấy dữ liệu JSON từ request body
        data = request.get_json()

        # Lấy user_id đã được gắn từ JWT middleware
        user_id = request.user_id

        # Gọi service xử lý logic
        result = WalletService.create_wallet(
            user_id=user_id,
            eth_address=data.get("eth_address"),
            network=data.get("network")
        )

        # ⛔️ Frontend không nên đọc status trong body
        status = result.pop("status")

        return jsonify(result), status

    except Exception as e:
        print("CREATE WALLET ERROR:", e)
        return jsonify({"error": str(e)}), 500


@wallet_bp.route("", methods=["GET"])
@jwt_required
def get_user_wallets():
    """
    GET /api/wallets
    Trả danh sách wallet của user đang đăng nhập
    """
    try:
        # Lấy user_id từ JWT
        user_id = request.user_id

        # Gọi service lấy danh sách wallet
        result = WalletService.get_user_wallets(user_id)

        return jsonify(result), 200

    except Exception as e:
        print("GET WALLETS ERROR:", e)
        return jsonify({"error": str(e)}), 500
