import os
import psycopg2
from dotenv import load_dotenv

load_dotenv()

conn = psycopg2.connect(os.getenv("DB_URL"))
cur = conn.cursor()
cur.execute("SELECT table_name FROM information_schema.tables WHERE table_schema='public';")
print(cur.fetchall())
cur.close()
conn.close()
