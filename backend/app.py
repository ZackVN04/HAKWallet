from flask import Flask, jsonify
from flask_cors import CORS
from dotenv import load_dotenv
import os

load_dotenv()

app = Flask(__name__)
CORS(app)

from routes.auth_routes import auth_bp
from routes.user_routes import user_bp
from routes.wallet_routes import wallet_bp

app.register_blueprint(auth_bp, url_prefix="/api/auth")
app.register_blueprint(user_bp, url_prefix="/api/user")
app.register_blueprint(wallet_bp, url_prefix="/api/wallets")

@app.route("/health")
def health():
    return jsonify({"status": "ok"}), 200

if __name__ == "__main__":
    app.run(debug=True)
