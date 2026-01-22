import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';
import '../services/wallet_service.dart';
import '../models/transaction_model.dart';


class WalletProvider extends ChangeNotifier {
  String? mnemonic;
  EthereumAddress? address;

  /// MOCK balance (ETH)
  double balance = 0.0;

  // ======================
  // CREATE WALLET
  // ======================
  void createWallet() async {
    mnemonic = WalletService.generateMnemonic();

    final privateKey =
        WalletService.privateKeyFromMnemonic(mnemonic!);

    address = await WalletService.getAddress(privateKey);

    balance = 1.2345; // mock balance
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
    try {
      if (!WalletService.isValidMnemonic(input)) {
        return false;
      }

      mnemonic = input.trim();

      final privateKey =
          WalletService.privateKeyFromMnemonic(mnemonic!);

      address = await WalletService.getAddress(privateKey);

      balance = 1.0000; // mock
      notifyListeners();
      return true;
    } catch (_) {
      return false;
    }
  }

  // ======================
  // IMPORT WALLET (PRIVATE KEY)
  // ======================
  Future<bool> importFromPrivateKey(String hex) async {
    try {
      final privateKey =
          WalletService.privateKeyFromHex(hex);

      address = await WalletService.getAddress(privateKey);

      mnemonic = null; // unknown mnemonic
      balance = 1.0000; // mock
      notifyListeners();
      return true;
    } catch (_) {
      return false;
    }
  }

  // ======================
  // MOCK BALANCE
  // ======================
  void refreshBalanceMock() {
    balance += 0.001;
    notifyListeners();
  }

  // ======================
  // RESET WALLET
  // ======================
  void reset() {
    mnemonic = null;
    address = null;
    balance = 0.0;
    transactions.clear();
    notifyListeners();
  }
  // ======================
  // SEND ETH (MOCK)
  // ======================
  Future<bool> sendEth({
    required String toAddress,
    required double amount,
  }) async {
    try {
      if (address == null) return false;
      if (amount <= 0) return false;
      if (amount > balance) return false;

      EthereumAddress.fromHex(toAddress);

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
  // TRANSACTION HISTORY
  // ======================
  List<TransactionModel> transactions = [];

  String _mockTxHash() {
    const chars = 'abcdef0123456789';
    return '0x' +
        List.generate(
          64,
          (i) => chars[(DateTime.now().millisecondsSinceEpoch + i) % chars.length],
        ).join();
  }

  // ======================
  // FUTURE: BACKEND
  // ======================
  /// Future<void> fetchBalanceFromBackend()
}
