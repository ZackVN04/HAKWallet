from flask import Flask, jsonify
from flask_cors import CORS
from dotenv import load_dotenv
import os

# =========================
# LOAD ENV
# =========================
load_dotenv()

# =========================
# INIT APP
# =========================
app = Flask(__name__)

# =========================
# CORS – FIX TRIỆT ĐỂ
# =========================
CORS(
    app,
    resources={r"/api/*": {"origins": "*"}},
    supports_credentials=True,
    allow_headers=[
        "Content-Type",
        "Authorization",
    ],
    methods=[
        "GET",
        "POST",
        "PUT",
        "DELETE",
        "OPTIONS",
    ],
)

# =========================
# IMPORT ROUTES
# =========================
from routes.auth_routes import auth_bp
from routes.user_routes import user_bp
from routes.wallet_routes import wallet_bp
from routes.balance_routes import balance_bp
from routes.transaction_routes import transaction_bp

# =========================
# REGISTER BLUEPRINTS
# =========================
app.register_blueprint(auth_bp, url_prefix="/api/auth")
app.register_blueprint(user_bp, url_prefix="/api/user")
app.register_blueprint(wallet_bp, url_prefix="/api/wallets")
app.register_blueprint(balance_bp, url_prefix="/api/balance")
app.register_blueprint(transaction_bp, url_prefix="/api/transactions")

# =========================
# HEALTH CHECK
# =========================
@app.route("/health", methods=["GET"])
def health():
    return jsonify({"status": "ok"}), 200

# =========================
# MAIN
# =========================
if __name__ == "__main__":
    app.run(
        host="0.0.0.0",
        port=int(os.getenv("PORT", 5000)),
        debug=True,
    )
