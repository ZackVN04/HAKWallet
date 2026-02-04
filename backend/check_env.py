from supabase import create_client
import os
from dotenv import load_dotenv

# Load biến môi trường từ .env
load_dotenv()

print("SUPABASE_URL =", os.getenv("SUPABASE_URL"))
print("SERVICE_ROLE_KEY =", os.getenv("SUPABASE_SERVICE_ROLE_KEY")[:10])
