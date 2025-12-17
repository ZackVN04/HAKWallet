-- ==============================
-- HAKWallet - Initial Database
-- ==============================

CREATE TABLE IF NOT EXISTS wallets (
    id SERIAL PRIMARY KEY,
    wallet_address TEXT UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS tx_history (
    id SERIAL PRIMARY KEY,
    wallet_address TEXT NOT NULL,
    tx_hash TEXT UNIQUE NOT NULL,
    "from" TEXT,
    "to" TEXT,
    value_wei NUMERIC,
    gas_used BIGINT,
    gas_price BIGINT,
    status TEXT,
    block_number BIGINT,
    timestamp TIMESTAMP
);

CREATE TABLE IF NOT EXISTS token_metadata (
    token_address TEXT PRIMARY KEY,
    symbol TEXT,
    decimals INT,
    name TEXT,
    logo_url TEXT
);

CREATE INDEX IF NOT EXISTS idx_tx_wallet
ON tx_history(wallet_address);
