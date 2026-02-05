import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';

import '../services/wallet_service.dart';
import '../services/api_service.dart';
import '../models/transaction_model.dart';

/// ===============================
/// WALLET PROVIDER
/// Quản lý toàn bộ state của ví
/// - Non-custodial (private key ở client)
/// - Backend chỉ lưu address + user_id
/// ===============================
class WalletProvider extends ChangeNotifier {
  // ===== WALLET STATE =====

  /// Mnemonic phrase (chỉ tồn tại ở frontend)
  String? mnemonic;

  /// Private key (KHÔNG BAO GIỜ gửi backend)
  EthPrivateKey? _privateKey;

  /// Địa chỉ ví Ethereum
  EthereumAddress? address;

  /// Số dư ETH
  double balance = 0.0;

  // ===== TRANSACTIONS =====

  /// Lịch sử giao dịch (hiện đang mock)
  List<TransactionModel> transactions = [];

  // ======================
  // CREATE WALLET
  // ======================
  /// Tạo ví mới từ mnemonic
  /// Nếu có token → lưu wallet vào backend
  void createWallet({String? token}) {
    // 1️⃣ Generate mnemonic
    mnemonic = WalletService.generateMnemonic();

    // 2️⃣ Tạo private key từ mnemonic
    _privateKey = WalletService.privateKeyFromMnemonic(mnemonic!);

    // 3️⃣ Lấy địa chỉ ví
    address = WalletService.getAddress(_privateKey!);

    // 4️⃣ Set balance mock (sẽ thay bằng backend sau)
    _setMockBalance();

    // 5️⃣ LƯU WALLET VÀO BACKEND (nếu đã login)
    if (token != null) {
      saveWalletToBackend(token);
    }

    notifyListeners();
  }

  // ======================
  // VERIFY MNEMONIC
  // ======================
  /// Kiểm tra mnemonic user nhập lại có đúng không
  bool verifyMnemonic(String input) {
    if (mnemonic == null) return false;
    return mnemonic!.trim() == input.trim();
  }

  // ======================
  // IMPORT WALLET (MNEMONIC)
  // ======================
  /// Import ví từ mnemonic
  /// Backend chỉ lưu address
  Future<bool> importFromMnemonic(
    String input, {
    String? token,
  }) async {
    if (!WalletService.isValidMnemonic(input)) return false;

    mnemonic = input.trim();
    _privateKey = WalletService.privateKeyFromMnemonic(mnemonic!);
    address = WalletService.getAddress(_privateKey!);

    _setMockBalance();

    // Lưu wallet vào backend
    if (token != null) {
      await saveWalletToBackend(token);
    }

    notifyListeners();
    return true;
  }

  // ======================
  // IMPORT WALLET (PRIVATE KEY)
  // ======================
  /// Import ví từ private key
  /// ⚠️ mnemonic sẽ NULL (không recover được)
  Future<bool> importFromPrivateKey(
    String hex, {
    String? token,
  }) async {
    try {
      _privateKey = WalletService.privateKeyFromHex(hex);
      address = WalletService.getAddress(_privateKey!);
      mnemonic = null;

      _setMockBalance();

      // Lưu wallet vào backend
      if (token != null) {
        await saveWalletToBackend(token);
      }

      notifyListeners();
      return true;
    } catch (_) {
      return false;
    }
  }

  // ======================
  // SAVE WALLET → BACKEND
  // ======================
  /// Gọi POST /api/wallets
  /// Backend sẽ gắn wallet với user_id từ JWT
  Future<void> saveWalletToBackend(String token) async {
    if (address == null) return;

    await ApiService.saveWallet(
      token: token,
      address: address!.hex,
      network: "sepolia",
    );
  }

  // ======================
  // BALANCE (MOCK → BACKEND)
  // ======================
  /// MOCK balance (demo)
  void _setMockBalance() {
    balance = 1.2345;
  }

  /// 🔜 SẼ DÙNG THẬT
  /// GET /api/balance/:address
  Future<void> fetchBalanceFromBackend() async {
    if (address == null) return;

    balance = await ApiService.getBalance(address!.hex);
    notifyListeners();
  }

  // ======================
  // SEND ETH (HIỆN MOCK)
  // ======================
  /// Gửi ETH (demo)
  /// 🔜 Sau này:
  /// - Frontend ký tx
  /// - Gửi raw_tx lên backend
  Future<bool> sendEth({
    required String toAddress,
    required double amount,
  }) async {
    if (_privateKey == null || address == null) return false;
    if (amount <= 0 || amount > balance) return false;

    try {
      // Validate address
      EthereumAddress.fromHex(toAddress);

      // MOCK delay
      await Future.delayed(const Duration(seconds: 1));

      balance -= amount;

      // Thêm transaction mock
      transactions.insert(
        0,
        TransactionModel(
          txHash: _mockTxHash(),
          toAddress: toAddress,
          valueEth: amount,
          status: 'success',
          timestamp: DateTime.now(),
        ),
      );

      notifyListeners();
      return true;
    } catch (_) {
      return false;
    }
  }

  // ======================
  // RESET WALLET (LOGOUT)
  // ======================
  /// Clear toàn bộ state khi logout
  void reset() {
    mnemonic = null;
    _privateKey = null;
    address = null;
    balance = 0.0;
    transactions.clear();
    notifyListeners();
  }

  // ======================
  // MOCK TX HASH
  // ======================
  String _mockTxHash() {
    const chars = 'abcdef0123456789';
    return '0x' +
        List.generate(
          64,
          (i) =>
              chars[(DateTime.now().millisecondsSinceEpoch + i) % chars.length],
        ).join();
  }

  // ======================
  // DEMO: REFRESH BALANCE
  // ======================
  void refreshBalanceMock() {
    balance += 0.001;
    notifyListeners();
  }
}
