from repositories.wallet_repository import WalletRepository


class WalletService:

    @staticmethod
    def create_wallet(user_id, eth_address, network):
        """
        Xử lý nghiệp vụ tạo wallet
        """

        # 1️ Validate dữ liệu
        if not eth_address or not network:
            return {
                "error": "Missing eth_address or network",
                "status": 400
            }

        # 2️ Chuẩn hóa dữ liệu
        eth_address = eth_address.lower().strip()
        network = network.lower().strip()

        # 3️ Check ví đã tồn tại chưa (address + network)
        existing = WalletRepository.find_by_address_and_network(
            eth_address, network
        )

        if existing:
            return {
                "error": "Wallet already exists",
                "status": 409
            }

        # 4️ Check user đã có ví nào chưa
        has_wallet = WalletRepository.user_has_wallet(user_id)

        # Nếu user chưa có ví nào → set default
        is_default = not has_wallet

        # 5️ Insert wallet
        wallet = WalletRepository.create_wallet(
            user_id=user_id,
            eth_address=eth_address,
            network=network,
            is_default=is_default
        )

        # 6️ Trả kết quả
        return {
            "message": "Wallet saved successfully",
            "wallet": wallet,
            "status": 201
        }
