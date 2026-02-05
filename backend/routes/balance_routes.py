from flask import Blueprint, jsonify
from services.balance_service import BalanceService
from core.jwt_middleware import jwt_required

# Blueprint cho balance API
balance_bp = Blueprint("balance", __name__)


@balance_bp.route("/<string:address>", methods=["GET"])
@jwt_required
def get_balance(address):
    print("🔍 BACKEND GET BALANCE FOR:", address)
    """
    API: GET /api/balance/<address>
    Header:
        Authorization: Bearer <JWT>
    """
    try:
        result = BalanceService.get_balance(address)
        status = result.pop("status", 200)
        return jsonify(result), status

    except Exception as e:
        print("GET BALANCE ERROR:", e)
        return jsonify({"error": str(e)}), 500
