from flask import Blueprint, request, jsonify
from core.jwt_middleware import jwt_required
from services.transaction_service import TransactionService

transaction_bp = Blueprint("transaction", __name__)

# =========================
# SEND RAW TRANSACTION
# =========================
@transaction_bp.route("/send", methods=["POST", "OPTIONS"])
@jwt_required
def send_transaction():
    # =========================
    # PREFLIGHT
    # =========================
    if request.method == "OPTIONS":
        return "", 200

    try:
        data = request.get_json() or {}
        raw_tx = data.get("raw_tx")

        result = TransactionService.send_raw_transaction(raw_tx)

        status = result.pop("status", 200)
        return jsonify(result), status

    except Exception as e:
        print("SEND TX ERROR:", e)
        return jsonify({"error": "Internal server error"}), 500