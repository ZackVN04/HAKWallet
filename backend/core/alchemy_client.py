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

        alchemy_url = os.getenv("ALCHEMY_URL")

        if not alchemy_url:
            raise Exception("ALCHEMY_URL is not configured")

        payload = {
            "jsonrpc": "2.0",
            "id": 1,
            "method": "eth_getBalance",
            "params": [
                address,
                "latest"
            ]
        }

        response = requests.post(alchemy_url, json=payload)

        if response.status_code != 200:
            raise Exception("Failed to connect to Alchemy")

        data = response.json()

        if "result" not in data:
            raise Exception("Invalid response from Alchemy")

        # Alchemy trả về số HEX (VD: 0x123abc)
        balance_wei = int(data["result"], 16)

        return balance_wei
