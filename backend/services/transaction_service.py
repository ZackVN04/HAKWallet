# services/transaction_service.py

from core.alchemy_client import AlchemyClient


class TransactionService:

    @staticmethod
    def send_raw_transaction(raw_tx: str):
        """
        Xử lý nghiệp vụ gửi raw transaction
        """

        # 1️⃣ Validate dữ liệu
        if not raw_tx:
            return {
                "error": "Missing raw_tx",
                "status": 400
            }

        # raw_tx phải là hex string
        if not raw_tx.startswith("0x"):
            return {
                "error": "Invalid raw transaction format",
                "status": 400
            }

        # 2️⃣ Gửi raw transaction lên Alchemy
        tx_hash = AlchemyClient.send_raw_transaction(raw_tx)

        # 3️⃣ Trả kết quả
        return {
            "message": "Transaction sent successfully",
            "tx_hash": tx_hash,
            "status": 200
        }
