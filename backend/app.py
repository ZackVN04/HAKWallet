from flask import Flask, request, jsonify
from flask_cors import CORS
import os
import psycopg2
import requests
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)
CORS(app)

ALCHEMY_URL = os.getenv("ALCHEMY_URL")
DB_URL = os.getenv("DB_URL")

# --------------------
# DB connection helper
# --------------------
def get_db():
    return psycopg2.connect(DB_URL)

# --------------------
# Health check
# --------------------
@app.route("/health")
def health():
    return {"status": "ok"}

# --------------------
# Get ETH balance
# --------------------
@app.route("/balance/<address>")
def get_balance(address):
    payload = {
        "jsonrpc": "2.0",
        "method": "eth_getBalance",
        "params": [address, "latest"],
        "id": 1
    }
    res = requests.post(ALCHEMY_URL, json=payload)
    return jsonify(res.json())

# --------------------
# Save transaction
# --------------------
@app.route("/save-tx", methods=["POST"])
def save_tx():
    data = request.json
    conn = get_db()
    cur = conn.cursor()

    cur.execute("""
        INSERT INTO tx_history (wallet_address, tx_hash, "from", "to", value_wei, status)
        VALUES (%s, %s, %s, %s, %s, %s)
    """, (
        data["wallet_address"],
        data["tx_hash"],
        data["from"],
        data["to"],
        data["value"],
        data["status"]
    ))

    conn.commit()
    cur.close()
    conn.close()
    return {"message": "saved"}

# --------------------
# Run app
# --------------------
if __name__ == "__main__":
    print("Backend running at http://127.0.0.1:5000")
    app.run(debug=True)
