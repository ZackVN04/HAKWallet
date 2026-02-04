import psycopg2
from psycopg2.extras import RealDictCursor
import os

class UserRepository:

    @staticmethod
    def get_connection():
        # OK – dùng DB_URL từ .env
        return psycopg2.connect(os.getenv("DB_URL"))

    @staticmethod
    def find_by_email(email):
        """
        🔧 UPDATE:
        - Trả đầy đủ user_id, email, password_hash, status
        - Dùng cho cả register & login
        """
        conn = psycopg2.connect(
            os.getenv("DB_URL"),
            cursor_factory=RealDictCursor
        )
        cur = conn.cursor()

        cur.execute(
            """
            SELECT user_id, email, password_hash, status
            FROM users
            WHERE email = %s
            LIMIT 1
            """,
            (email,)
        )

        user = cur.fetchone()

        cur.close()
        conn.close()
        return user

    @staticmethod
    def create_user(email, password_hash):
        conn = UserRepository.get_connection()
        cur = conn.cursor()

        # 🔧 UPDATE: thêm status mặc định
        cur.execute(
            """
            INSERT INTO users (email, password_hash, status)
            VALUES (%s, %s, 'active')
            """,
            (email, password_hash)
        )

        conn.commit()
        cur.close()
        conn.close()

    @staticmethod
    def find_full_by_email(email):
        conn = UserRepository.get_connection()
        cur = conn.cursor(cursor_factory=RealDictCursor)

        cur.execute(
            "SELECT user_id, password_hash FROM users WHERE email = %s",
            (email,)
        )

        user = cur.fetchone()
        cur.close()
        conn.close()
        return user

