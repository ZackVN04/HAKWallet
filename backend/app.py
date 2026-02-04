from flask import Flask, jsonify
from flask_cors import CORS
from dotenv import load_dotenv
import os

# CHỈ IMPORT CÁI ĐANG TỒN TẠI
from routes.auth_routes import auth_bp

load_dotenv()

app = Flask(__name__)
CORS(app)

@app.route("/health", methods=["GET"])
def health():
    return jsonify({"status": "ok"}), 200

# CHỈ REGISTER AUTH
app.register_blueprint(auth_bp, url_prefix="/api/auth")

if __name__ == "__main__":
    port = int(os.getenv("PORT", 5000))
    print(f"Backend running at http://127.0.0.1:{port}")
    app.run(host="0.0.0.0", port=port, debug=True)
