# core/alchemy_client.py

import requests
import os


class AlchemyClient:
    """
    Client chuyên đọc / gửi dữ liệu blockchain
    KHÔNG xử lý nghiệp vụ
    """

    @staticmethod
    def _rpc(payload):
        """
        Gửi JSON-RPC tới Alchemy
        """
        url = os.getenv("ALCHEMY_URL")
        if not url:
            raise Exception("ALCHEMY_URL not set")

        res = requests.post(url, json=payload)
        if res.status_code != 200:
            raise Exception("Alchemy RPC error")

        data = res.json()
        if "error" in data:
            raise Exception(data["error"]["message"])

        return data["result"]

    # =========================
    # GET BALANCE (THÊM MỚI)
    # =========================
    @staticmethod
    def get_balance(address):
        """
        Gọi eth_getBalance
        Trả về balance WEI (int)
        """
        result = AlchemyClient._rpc({
            "jsonrpc": "2.0",
            "id": 1,
            "method": "eth_getBalance",
            "params": [address, "latest"]
        })

        # Alchemy trả HEX -> convert sang int
        return int(result, 16)

    @staticmethod
    def send_raw_transaction(raw_tx):
        """
        Gửi raw transaction đã ký
        """
        return AlchemyClient._rpc({
            "jsonrpc": "2.0",
            "id": 1,
            "method": "eth_sendRawTransaction",
            "params": [raw_tx]
        })

    @staticmethod
    def get_transaction(tx_hash):
        """
        Lấy transaction detail
        """
        return AlchemyClient._rpc({
            "jsonrpc": "2.0",
            "id": 1,
            "method": "eth_getTransactionByHash",
            "params": [tx_hash]
        })

    @staticmethod
    def get_receipt(tx_hash):
        """
        Lấy receipt (chỉ có khi tx đã mined)
        """
        return AlchemyClient._rpc({
            "jsonrpc": "2.0",
            "id": 1,
            "method": "eth_getTransactionReceipt",
            "params": [tx_hash]
        })
