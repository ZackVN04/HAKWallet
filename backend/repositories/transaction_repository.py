import psycopg2
from psycopg2.extras import RealDictCursor
import os


class TransactionRepository:

    @staticmethod
    def get_conn():
        return psycopg2.connect(
            os.getenv("DB_URL"),
            cursor_factory=RealDictCursor
        )

    # =====================
    # CHECK EXISTENCE
    # =====================
    @staticmethod
    def exists(tx_hash):
        conn = TransactionRepository.get_conn()
        cur = conn.cursor()

        cur.execute(
            "SELECT 1 FROM transactions WHERE tx_hash = %s",
            (tx_hash,)
        )
        exists = cur.fetchone()

        cur.close()
        conn.close()
        return exists is not None

    # =====================
    # INSERT LEDGER (IMMUTABLE)
    # =====================
    @staticmethod
    def insert(tx):
        """
        Ledger bất biến:
        - INSERT ONLY
        - KHÔNG UPDATE
        - KHÔNG DELETE
        """
        conn = TransactionRepository.get_conn()
        cur = conn.cursor()

        cur.execute("""
            INSERT INTO transactions (
                tx_hash,
                wallet_id,
                from_address,
                to_address,
                value_eth,
                gas_used,
                gas_price,
                status,
                block_number,
                timestamp
            )
            VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,NOW())
        """, (
            tx["tx_hash"],
            tx["wallet_id"],
            tx["from_address"],
            tx["to_address"],
            tx["value_eth"],
            tx["gas_used"],
            tx["gas_price"],
            tx["status"],
            tx["block_number"],
        ))

        conn.commit()
        cur.close()
        conn.close()
