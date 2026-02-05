# listeners/transaction_listener.py

from core.alchemy_client import AlchemyClient
from repositories.transaction_repository import TransactionRepository

def sync_transaction(tx_hash):
    """
    Poll blockchain để update status / gas_used / block_number
    """

    receipt = AlchemyClient.get_transaction_receipt(tx_hash)

    if receipt and receipt["status"] == "0x1":
        TransactionRepository.update_status(
            tx_hash,
            status="success",
            gas_used=int(receipt["gasUsed"], 16),
            block_number=int(receipt["blockNumber"], 16)
        )
