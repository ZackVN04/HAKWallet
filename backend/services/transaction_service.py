from core.alchemy_client import AlchemyClient
from repositories.transaction_repository import TransactionRepository
from repositories.wallet_repository import WalletRepository


class TransactionService:

    @staticmethod
    def send_raw_transaction(raw_tx):
        """
        Gửi raw transaction lên blockchain
        """
        if not raw_tx or not raw_tx.startswith("0x"):
            return {"error": "Invalid raw_tx", "status": 400}

        tx_hash = AlchemyClient.send_raw_transaction(raw_tx)

        return {
            "tx_hash": tx_hash,
            "status": 200
        }

    @staticmethod
    def save_transaction(user_id, tx_hash):
        """
        SAVE TRANSACTION THEO BLOCKCHAIN
        """

        if TransactionRepository.exists(tx_hash):
            return {"message": "Transaction already saved", "status": 200}

        # 1️ Đọc blockchain
        tx = AlchemyClient.get_transaction(tx_hash)
        receipt = AlchemyClient.get_receipt(tx_hash)

        if not tx or not receipt or receipt["status"] != "0x1":
            return {"error": "Transaction not confirmed", "status": 400}

        from_address = tx["from"].lower()
        to_address = tx["to"].lower()
        gas_price = int(tx["gasPrice"], 16)
        gas_used = int(receipt["gasUsed"], 16)
        block_number = int(receipt["blockNumber"], 16)
        value_eth = int(tx["value"], 16) / 10**18

        # 2️ Map wallet → user
        wallet = WalletRepository.find_by_address_and_network(
            from_address, "sepolia"
        )

        if not wallet or wallet["user_id"] != user_id:
            return {"error": "Wallet not owned by user", "status": 403}

        # 3️⃣ Insert ledger
        TransactionRepository.insert({
            "tx_hash": tx_hash,
            "wallet_id": wallet["wallet_id"],
            "from_address": from_address,
            "to_address": to_address,
            "value_eth": value_eth,
            "gas_used": gas_used,
            "gas_price": gas_price,
            "status": "success",
            "block_number": block_number
        })

        return {
            "message": "Transaction saved",
            "status": 201
        }
