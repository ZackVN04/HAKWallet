# routes/transaction_routes.py

from flask import Blueprint, request, jsonify

# Import service xử lý nghiệp vụ
from services.transaction_service import TransactionService

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
