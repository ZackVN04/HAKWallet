from functools import wraps
from flask import request, jsonify
from core.security import verify_token
import jwt

def jwt_required(fn):
    @wraps(fn)
    def wrapper(*args, **kwargs):

        # ============================
        # ✅ CHO PREFLIGHT (OPTIONS) QUA
        # ============================
        if request.method == "OPTIONS":
            return "", 200

        auth_header = request.headers.get("Authorization")

        if not auth_header or not auth_header.startswith("Bearer "):
            return jsonify({
                "error": "Missing or invalid Authorization header"
            }), 401

        token = auth_header.split(" ")[1]

        try:
            payload = verify_token(token)

            user_id = (
                payload.get("user_id")
                or payload.get("sub")
                or payload.get("id")
            )

            if not user_id:
                return jsonify({
                    "error": "Invalid token payload (missing user id)"
                }), 401

            request.user_id = user_id
            request.jwt_payload = payload

        except jwt.ExpiredSignatureError:
            return jsonify({"error": "Token expired"}), 401
        except jwt.InvalidTokenError:
            return jsonify({"error": "Invalid token"}), 401
        except Exception as e:
            print("JWT ERROR:", e)
            return jsonify({"error": "Unauthorized"}), 401

        return fn(*args, **kwargs)

    return wrapper
