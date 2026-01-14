-- Enable UUID
create extension if not exists "uuid-ossp";

-- USERS
create table users (
  user_id uuid primary key default uuid_generate_v4(),
  email varchar(255) not null unique,
  password_hash varchar(255) not null,
  is_2fa_enabled boolean default false,
  status varchar(20) default 'active',
  created_at timestamp default now()
);

-- WALLETS
create table wallets (
  wallet_id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references users(user_id) on delete cascade,
  eth_address varchar(42) not null,
  network varchar(20) not null,
  is_default boolean default false,
  created_at timestamp default now()
);

create unique index idx_wallet_address
on wallets (eth_address, network);

-- TRANSACTIONS
create table transactions (
  tx_hash varchar(66) primary key,
  wallet_id uuid not null references wallets(wallet_id) on delete cascade,
  from_address varchar(42) not null,
  to_address varchar(42) not null,
  value_eth numeric(36,18) not null,
  gas_used bigint,
  gas_price bigint,
  status varchar(20),
  block_number bigint,
  timestamp timestamp
);

-- LOGIN HISTORY
create table login_history (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid references users(user_id) on delete cascade,
  ip_address varchar(64),
  device_info varchar(255),
  login_time timestamp default now(),
  is_success boolean
);
