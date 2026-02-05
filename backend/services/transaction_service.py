# services/transaction_service.py

from core.alchemy_client import AlchemyClient


class TransactionService:
    """
    Service xử lý SEND TRANSACTION (NON-CUSTODIAL)

    ⚠️ KHÔNG GHI DB TẠI ĐÂY
    Ledger sẽ được tạo khi:
    - Tx được confirm
    - Có receipt
    - Parse đầy đủ from / to / value / gas
    """

    @staticmethod
    def send_raw_transaction(raw_tx: str):
        # =====================
        # 1. VALIDATE INPUT
        # =====================
        if not raw_tx:
            return {
                "error": "Missing raw_tx",
                "status": 400,
            }

        if not isinstance(raw_tx, str):
            return {
                "error": "raw_tx must be string",
                "status": 400,
            }

        if not raw_tx.startswith("0x"):
            return {
                "error": "Invalid raw transaction format",
                "status": 400,
            }

        # =====================
        # 2. RELAY TO BLOCKCHAIN
        # =====================
        try:
            tx_hash = AlchemyClient.send_raw_transaction(raw_tx)
        except Exception as e:
            # log chi tiết ở backend
            print("SEND RAW TX FAILED:", e)
            return {
                "error": str(e),
                "status": 500,
            }

        # =====================
        # 3. RETURN RESULT
        # =====================
        # ❗ KHÔNG INSERT DB Ở ĐÂY
        # ❗ KHÔNG TRUST USER DATA
        # ❗ DB chỉ update khi có receipt

        return {
            "tx_hash": tx_hash,
            "status": 200,
        }
