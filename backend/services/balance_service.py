# services/balance_service.py

from core.alchemy_client import AlchemyClient


class BalanceService:
    """
    Service xử lý nghiệp vụ đọc balance từ blockchain
    """

    @staticmethod
    def get_balance(address: str):
        # 1️⃣ Validate address
        if not address:
            return {
                "error": "Missing address",
                "status": 400
            }

        address = address.strip()

        if not address.startswith("0x") or len(address) != 42:
            return {
                "error": "Invalid Ethereum address",
                "status": 400
            }

        # 2️⃣ Gọi Alchemy lấy balance WEI
        balance_wei = AlchemyClient.get_balance(address)

        # 3️⃣ Convert WEI → ETH
        balance_eth = balance_wei / 10**18

        # 4️⃣ Trả kết quả
        return {
            "address": address,
            "balance_eth": str(balance_eth),
            "status": 200
        }
