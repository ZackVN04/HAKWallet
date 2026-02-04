import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';

import '../services/wallet_service.dart';
import '../services/api_service.dart';
import '../models/transaction_model.dart';

class WalletProvider extends ChangeNotifier {
  // ===== WALLET STATE =====
  String? mnemonic;
  EthPrivateKey? _privateKey;
  EthereumAddress? address;

  double balance = 0.0;

  // ===== TRANSACTIONS =====
  List<TransactionModel> transactions = [];

  // ======================
  // CREATE WALLET
  // ======================
  void createWallet() {
    mnemonic = WalletService.generateMnemonic();
    _privateKey = WalletService.privateKeyFromMnemonic(mnemonic!);
    address = WalletService.getAddress(_privateKey!);

    _setMockBalance();
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
  // IMPORT WALLET (MNEMONIC)
  // ======================
  Future<bool> importFromMnemonic(String input) async {
    if (!WalletService.isValidMnemonic(input)) return false;

    mnemonic = input.trim();
    _privateKey = WalletService.privateKeyFromMnemonic(mnemonic!);
    address = WalletService.getAddress(_privateKey!);

    _setMockBalance();
    notifyListeners();
    return true;
  }

  // ======================
  // IMPORT WALLET (PRIVATE KEY)
  // ======================
  Future<bool> importFromPrivateKey(String hex) async {
    try {
      _privateKey = WalletService.privateKeyFromHex(hex);
      address = WalletService.getAddress(_privateKey!);
      mnemonic = null;

      _setMockBalance();
      notifyListeners();
      return true;
    } catch (_) {
      return false;
    }
  }

  // ======================
  // BALANCE (MOCK → BACKEND)
  // ======================
  void _setMockBalance() {
    balance = 1.2345;
  }

  Future<void> fetchBalanceFromBackend() async {
    if (address == null) return;
    balance = await ApiService.getBalance(address.toString());
    notifyListeners();
  }

  // ======================
  // SEND ETH (MOCK)
  // ======================
  Future<bool> sendEth({
    required String toAddress,
    required double amount,
  }) async {
    if (_privateKey == null || address == null) return false;
    if (amount <= 0 || amount > balance) return false;

    try {
      EthereumAddress.fromHex(toAddress);

      // MOCK delay
      await Future.delayed(const Duration(seconds: 1));

      balance -= amount;

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
  // RESET
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
  // MOCK TX HASH
  // ======================
  String _mockTxHash() {
    const chars = 'abcdef0123456789';
    return '0x' +
        List.generate(
          64,
          (i) => chars[(DateTime.now().millisecondsSinceEpoch + i) % chars.length],
        ).join();
  }
  // ======================
// MOCK BALANCE (FOR DEMO)
// ======================
void refreshBalanceMock() {
  balance += 0.001;
  notifyListeners();
}

}
