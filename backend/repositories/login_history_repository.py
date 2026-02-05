import os
import psycopg2

class LoginHistoryRepository:

    @staticmethod
    def log(user_id, ip_address, device_info, is_success):
        conn = psycopg2.connect(os.getenv("DB_URL"))
        cur = conn.cursor()

        cur.execute(
            """
            INSERT INTO login_history
            (user_id, ip_address, device_info, is_success)
            VALUES (%s, %s, %s, %s)
            """,
            (user_id, ip_address, device_info, is_success)
        )

        conn.commit()
        cur.close()
        conn.close()
