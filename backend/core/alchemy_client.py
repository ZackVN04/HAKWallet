# core/alchemy_client.py

import requests
import os


class AlchemyClient:
    """
    Client chuyên dùng để gọi Alchemy JSON-RPC
    Không chứa nghiệp vụ
    """

    @staticmethod
    def get_balance(address: str) -> int:
        """
        Gọi eth_getBalance từ Alchemy
        Trả về số dư ở dạng WEI (int)
        """

        # Lấy URL Alchemy từ biến môi trường
        alchemy_url = os.getenv("ALCHEMY_URL")

        if not alchemy_url:
            raise Exception("ALCHEMY_URL is not configured")

        # Payload JSON-RPC
        payload = {
            "jsonrpc": "2.0",
            "id": 1,
            "method": "eth_getBalance",
            "params": [
                address,
                "latest"
            ]
        }

        # Gửi request
        response = requests.post(alchemy_url, json=payload)

        if response.status_code != 200:
            raise Exception("Failed to connect to Alchemy")

        data = response.json()

        if "result" not in data:
            raise Exception("Invalid response from Alchemy")

        # Chuyển HEX → int (Wei)
        balance_wei = int(data["result"], 16)

        return balance_wei

    @staticmethod
    def send_raw_transaction(raw_tx: str) -> str:
        """
        Gọi eth_sendRawTransaction
        Trả về tx_hash
        """

        # Lấy URL Alchemy
        alchemy_url = os.getenv("ALCHEMY_URL")

        if not alchemy_url:
            raise Exception("ALCHEMY_URL is not configured")

        # Payload JSON-RPC
        payload = {
            "jsonrpc": "2.0",
            "id": 1,
            "method": "eth_sendRawTransaction",
            "params": [
                raw_tx
            ]
        }

        # Gửi request lên Alchemy
        response = requests.post(alchemy_url, json=payload)

        if response.status_code != 200:
            raise Exception("Failed to connect to Alchemy")

        data = response.json()

        # Nếu Alchemy trả lỗi
        if "error" in data:
            raise Exception(data["error"]["message"])

        # Lấy tx_hash
        tx_hash = data.get("result")

        if not tx_hash:
            raise Exception("Failed to send transaction")

        return tx_hash
