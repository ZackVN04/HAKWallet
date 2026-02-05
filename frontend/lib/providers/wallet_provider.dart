import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';

import '../services/wallet_service.dart';
import '../services/api_service.dart';
import '../models/transaction_model.dart';

/// ===============================
/// WALLET PROVIDER
/// - Non-custodial
/// - Private key LUÔN ở client
/// - Backend chỉ lưu address + relay tx
/// ===============================
class WalletProvider extends ChangeNotifier {
  // ===== WALLET STATE =====
  String? mnemonic;
  EthPrivateKey? _privateKey;
  EthereumAddress? address;

  /// Balance ETH (lấy từ backend)
  double balance = 0.0;

  // ===== TRANSACTIONS =====
  List<TransactionModel> transactions = [];

  // ======================
  // CREATE WALLET
  // ======================
  void createWallet({String? token}) {
    mnemonic = WalletService.generateMnemonic();
    _privateKey = WalletService.privateKeyFromMnemonic(mnemonic!);
    address = WalletService.getAddress(_privateKey!);

    // Mock ban đầu
    _setMockBalance();

    if (token != null) {
      saveWalletToBackend(token);
    }

    notifyListeners();
  }

  // ======================
  // VERIFY MNEMONIC
  // ======================
  bool verifyMnemonic(String input) {
    if (mnemonic == null) return false;
    return mnemonic!.trim() == input.trim();
  }

  // ======================
  // IMPORT WALLET
  // ======================
  Future<bool> importFromMnemonic(
    String input, {
    String? token,
  }) async {
    if (!WalletService.isValidMnemonic(input)) return false;

    mnemonic = input.trim();
    _privateKey = WalletService.privateKeyFromMnemonic(mnemonic!);
    address = WalletService.getAddress(_privateKey!);

    _setMockBalance();

    if (token != null) {
      await saveWalletToBackend(token);
    }

    notifyListeners();
    return true;
  }

  Future<bool> importFromPrivateKey(
    String hex, {
    String? token,
  }) async {
    try {
      _privateKey = WalletService.privateKeyFromHex(hex);
      address = WalletService.getAddress(_privateKey!);
      mnemonic = null;

      _setMockBalance();

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
  Future<void> saveWalletToBackend(String token) async {
    if (address == null) return;

    await ApiService.saveWallet(
      token: token,
      address: address!.hex,
      network: "sepolia",
    );
  }

  // ======================
  // BALANCE
  // ======================
  void _setMockBalance() {
    balance = 1.2345;
  }

  /// GET /api/balance/:address
  Future<void> fetchBalanceFromBackend(String token) async {
    if (address == null) return;

    balance = await ApiService.getBalance(
      token: token,
      address: address!.hex,
    );

    notifyListeners();
  }

  // ======================
  // SEND ETH (BACKEND THẬT)
  // ======================
  /// Frontend ký transaction
  /// Backend chỉ relay raw_tx
  Future<bool> sendEthViaBackend({
    required String toAddress,
    required double amount,
    required String token,
  }) async {
    if (_privateKey == null || address == null) return false;
    if (amount <= 0 || amount > balance) return false;

    try {
      // 1️⃣ Validate address
      final to = EthereumAddress.fromHex(toAddress);

      // 2️⃣ Build transaction
      final tx = Transaction(
        to: to,
        value: EtherAmount.fromUnitAndValue(
          EtherUnit.ether,
          amount,
        ),
        gasPrice: EtherAmount.inWei(BigInt.from(20 * 1e9)),
        maxGas: 21000,
      );

      // 3️⃣ SIGN TX (NON-CUSTODIAL CORE)
      final rawTx = await WalletService.signTransaction(
        privateKey: _privateKey!,
        transaction: tx,
      );

      // 4️⃣ Send raw_tx → backend
      final txHash = await ApiService.sendRawTransaction(
        token: token,
        rawTx: rawTx,
      );

      // 5️⃣ Update local state (demo)
      balance -= amount;

      transactions.insert(
        0,
        TransactionModel(
          txHash: txHash,
          toAddress: toAddress,
          valueEth: amount,
          status: 'pending',
          timestamp: DateTime.now(),
        ),
      );

      notifyListeners();
      return true;
    } catch (e) {
      print("SEND TX ERROR: $e");
      return false;
    }
  }

  // ======================
  // RESET (LOGOUT)
  // ======================
  void reset() {
    mnemonic = null;
    _privateKey = null;
    address = null;
    balance = 0.0;
    transactions.clear();
    notifyListeners();
  }
  // ======================
// TRANSACTION HISTORY
// ======================
Future<void> fetchTransactionHistory(String token) async {
  if (address == null) return;

  transactions = await ApiService.getTransactionHistory(
    token: token,
    address: address!.hex,
  );

  notifyListeners();
}

}




