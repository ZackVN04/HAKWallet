from repositories.wallet_repository import WalletRepository


class WalletService:
    """
    Layer xử lý nghiệp vụ liên quan wallet
    """

    @staticmethod
    def create_wallet(user_id, eth_address, network):
        """
        Xử lý nghiệp vụ tạo wallet
        """

        # Validate dữ liệu đầu vào
        if not eth_address or not network:
            return {
                "error": "Missing eth_address or network",
                "status": 400
            }

        # Chuẩn hóa dữ liệu
        eth_address = eth_address.lower().strip()
        network = network.lower().strip()

        # Check trùng wallet theo address + network
        existing = WalletRepository.find_by_address_and_network(
            eth_address, network
        )

        if existing:
            return {
                "error": "Wallet already exists",
                "status": 409
            }

        # Check user đã có wallet chưa
        has_wallet = WalletRepository.user_has_wallet(user_id)

        # Wallet đầu tiên của user sẽ là default
        is_default = not has_wallet

        # Insert wallet vào DB
        wallet = WalletRepository.create_wallet(
            user_id=user_id,
            eth_address=eth_address,
            network=network,
            is_default=is_default
        )

        # ✅ Map lại field cho frontend (KHÔNG lộ DB column name)
        formatted_wallet = {
            "id": wallet["wallet_id"],
            "eth_address": wallet["eth_address"],
            "network": wallet["network"],
            "is_default": wallet["is_default"],
            "created_at": wallet["created_at"]
        }

        return {
            "message": "Wallet saved successfully",
            "wallet": formatted_wallet,
            "status": 201
        }

    @staticmethod
    def get_user_wallets(user_id):
        """
        Lấy danh sách wallet của user
        """

        wallets = WalletRepository.get_wallets_by_user(user_id)

        # ✅ Map DB → API response (rất quan trọng cho FE)
        formatted_wallets = [
            {
                "id": w["wallet_id"],
                "eth_address": w["eth_address"],
                "network": w["network"],
                "is_default": w["is_default"],
                "created_at": w["created_at"]
            }
            for w in wallets
        ]

        return {
            "wallets": formatted_wallets
        }
