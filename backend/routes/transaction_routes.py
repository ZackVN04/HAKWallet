# routes/transaction_routes.py

from flask import Blueprint, request, jsonify

# Import service xử lý nghiệp vụ
from services.transaction_service import TransactionService

from core.jwt_middleware import jwt_required

# Tạo Blueprint cho transaction
transaction_bp = Blueprint("transaction", __name__)


@transaction_bp.route("/send", methods=["POST"])
def send_transaction():
    """
    API: POST /api/transactions/send

    Body:
    {
        "raw_tx": "0x..."
    }
    """

    try:
        # Lấy JSON body
        data = request.get_json()

        # Lấy raw transaction
        raw_tx = data.get("raw_tx") if data else None

        # Gọi service xử lý
        result = TransactionService.send_raw_transaction(raw_tx)

        # Trả response + status code
        return jsonify(result), result["status"]

    except Exception as e:
        # Log lỗi backend
        print("SEND TX ERROR:", e)

        # Trả lỗi chung
        return jsonify({
            "error": str(e)
        }), 500



# =========================
# SAVE TRANSACTION (LEDGER)
# =========================
@transaction_bp.route("/save", methods=["POST"])
@jwt_required
def save_transaction():
    """
    POST /api/transactions/save
    Lưu giao dịch vào DB (ledger mirror)
    """
    try:
        data = request.get_json()

        # user_id được gắn từ JWT middleware
        user_id = request.user_id

        result = TransactionService.save_transaction(user_id, data)
        return jsonify(result), result["status"]

    except Exception as e:
        print("SAVE TX ERROR:", e)
        return jsonify({"error": str(e)}), 500