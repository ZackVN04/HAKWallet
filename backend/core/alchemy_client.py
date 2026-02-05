# core/alchemy_client.py

import os
import requests


class AlchemyClient:
    """
    Client chuyên dùng để gọi Alchemy JSON-RPC
    - Không chứa nghiệp vụ
    - Chỉ relay + validate response
    """

    @staticmethod
    def _get_alchemy_url() -> str:
        alchemy_url = os.getenv("ALCHEMY_URL")
        if not alchemy_url:
            raise Exception("ALCHEMY_URL is not configured")
        return alchemy_url

    # ==================================================
    # GET BALANCE (WEI)
    # ==================================================
    @staticmethod
    def get_balance(address: str) -> int:
        alchemy_url = AlchemyClient._get_alchemy_url()

        payload = {
            "jsonrpc": "2.0",
            "id": 1,
            "method": "eth_getBalance",
            "params": [address, "latest"],
        }

        try:
            response = requests.post(
                alchemy_url,
                json=payload,
                headers={"Content-Type": "application/json"},
                timeout=15,
            )
        except Exception as e:
            raise Exception(f"Alchemy connection error: {e}")

        if response.status_code != 200:
            raise Exception(
                f"Alchemy HTTP error {response.status_code}: {response.text}"
            )

        try:
            data = response.json()
        except Exception:
            raise Exception(
                f"Alchemy returned non-JSON response: {response.text}"
            )

        if "error" in data:
            raise Exception(
                f"Alchemy RPC error: {data['error']}"
            )

        result = data.get("result")
        if not result:
            raise Exception(f"Alchemy invalid response: {data}")

        # HEX -> int (WEI)
        return int(result, 16)

    # ==================================================
    # SEND RAW TRANSACTION
    # ==================================================
    @staticmethod
    def send_raw_transaction(raw_tx: str) -> str:
        alchemy_url = AlchemyClient._get_alchemy_url()

        payload = {
            "jsonrpc": "2.0",
            "id": 1,
            "method": "eth_sendRawTransaction",
            "params": [raw_tx],
        }

        try:
            response = requests.post(
                alchemy_url,
                json=payload,
                headers={"Content-Type": "application/json"},
                timeout=20,
            )
        except Exception as e:
            raise Exception(f"Alchemy connection error: {e}")

        # =========================
        # HTTP ERROR
        # =========================
        if response.status_code != 200:
            raise Exception(
                f"Alchemy HTTP error {response.status_code}: {response.text}"
            )

        # =========================
        # PARSE JSON (SAFE)
        # =========================
        try:
            data = response.json()
        except Exception:
            raise Exception(
                f"Alchemy returned non-JSON response: {response.text}"
            )

        # =========================
        # RPC ERROR
        # =========================
        if "error" in data:
            # Alchemy chuẩn trả error.message
            error = data["error"]
            message = (
                error.get("message")
                if isinstance(error, dict)
                else str(error)
            )
            raise Exception(f"Alchemy RPC error: {message}")

        # =========================
        # RESULT
        # =========================
        tx_hash = data.get("result")
        if not tx_hash:
            raise Exception(f"Alchemy missing tx hash: {data}")

        return tx_hash
