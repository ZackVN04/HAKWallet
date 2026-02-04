import psycopg2
from psycopg2.extras import RealDictCursor
import os


class WalletRepository:

    @staticmethod
    def get_connection():
        """
        Tạo kết nối DB từ biến môi trường DB_URL
        """
        return psycopg2.connect(
            os.getenv("DB_URL"),
            cursor_factory=RealDictCursor
        )

    @staticmethod
    def find_by_address_and_network(eth_address, network):
        """
        Check wallet đã tồn tại chưa theo address + network
        """
        conn = WalletRepository.get_connection()
        cur = conn.cursor()

        cur.execute(
            """
            SELECT wallet_id
            FROM wallets
            WHERE eth_address = %s AND network = %s
            """,
            (eth_address, network)
        )

        wallet = cur.fetchone()

        cur.close()
        conn.close()

        return wallet

    @staticmethod
    def user_has_wallet(user_id):
        """
        Check user đã có ví nào chưa
        """
        conn = WalletRepository.get_connection()
        cur = conn.cursor()

        cur.execute(
            """
            SELECT 1
            FROM wallets
            WHERE user_id = %s
            LIMIT 1
            """,
            (user_id,)
        )

        exists = cur.fetchone()

        cur.close()
        conn.close()

        return exists is not None

    @staticmethod
    def create_wallet(user_id, eth_address, network, is_default):
        """
        Insert wallet mới vào DB
        """
        conn = WalletRepository.get_connection()
        cur = conn.cursor()

        cur.execute(
            """
            INSERT INTO wallets (user_id, eth_address, network, is_default)
            VALUES (%s, %s, %s, %s)
            RETURNING wallet_id, eth_address, network, is_default, created_at
            """,
            (user_id, eth_address, network, is_default)
        )

        wallet = cur.fetchone()

        conn.commit()
        cur.close()
        conn.close()

        return wallet
