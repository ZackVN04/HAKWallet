import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';

import '../services/wallet_service.dart';
import '../services/api_service.dart';
import '../models/transaction_model.dart';

/// ===============================
/// WALLET PROVIDER
/// - Non-custodial
/// - Address = identity (DB)
/// - PrivateKey = capability (chỉ có sau UNLOCK)
/// ===============================
class WalletProvider extends ChangeNotifier {
  // ===== WALLET STATE =====
  String? mnemonic;                // chỉ dùng khi CREATE / IMPORT
  EthPrivateKey? _privateKey;       // chỉ có sau unlock
  EthereumAddress? address;         // identity

  double balance = 0.0;
  List<TransactionModel> transactions = [];

  // ===================================================
  // 1️⃣ LOAD WALLET FROM BACKEND (READ-ONLY)
  // ===================================================
  void setAddressFromBackend(String ethAddress) {
    address = EthereumAddress.fromHex(ethAddress);
    _privateKey = null;
    mnemonic = null;
    balance = 0.0;
    transactions.clear();
    notifyListeners();
  }

  // ===================================================
  // 2️⃣ CREATE WALLET (CLIENT-SIDE)
  // ===================================================
  void createWallet({String? token}) {
    mnemonic = WalletService.generateMnemonic();
    _privateKey = WalletService.privateKeyFromMnemonic(mnemonic!);
    address = WalletService.getAddress(_privateKey!);

    balance = 0.0;

    if (token != null) {
      saveWalletToBackend(token);
    }

    notifyListeners();
  }

  // ===================================================
  // 3️⃣ IMPORT MNEMONIC (NEW WALLET)
  // ===================================================
  Future<bool> importFromMnemonic(
    String input, {
    String? token,
  }) async {
    if (!WalletService.isValidMnemonic(input)) return false;

    mnemonic = input.trim();
    _privateKey = WalletService.privateKeyFromMnemonic(mnemonic!);
    address = WalletService.getAddress(_privateKey!);

    balance = 0.0;

    if (token != null) {
      await saveWalletToBackend(token);
    }

    notifyListeners();
    return true;
  }

  // ===================================================
  // 🔐 4️⃣ UNLOCK WALLET LOAD TỪ DB (BẰNG MNEMONIC)
  // ===================================================
  Future<bool> unlockWalletWithMnemonic(String inputMnemonic) async {
    if (address == null) return false;
    if (!WalletService.isValidMnemonic(inputMnemonic)) return false;

    try {
      final pk =
          WalletService.privateKeyFromMnemonic(inputMnemonic.trim());
      final derivedAddress = WalletService.getAddress(pk);

      // CHECK IDENTITY
      if (derivedAddress.hex.toLowerCase() !=
          address!.hex.toLowerCase()) {
        return false;
      }

      _privateKey = pk; // unlock capability
      mnemonic = null;

      notifyListeners();
      return true;
    } catch (_) {
      return false;
    }
  }

  // ===================================================
  // 5️⃣ SAVE WALLET → BACKEND
  // ===================================================
  Future<void> saveWalletToBackend(String token) async {
    if (address == null) return;

    await ApiService.saveWallet(
      token: token,
      address: address!.hex,
      network: "sepolia",
    );
  }

  // ===================================================
  // 6️⃣ FETCH BALANCE
  // ===================================================
  Future<void> fetchBalanceFromBackend(String token) async {
    if (address == null) return;

    balance = await ApiService.getBalance(
      token: token,
      address: address!.hex,
    );

    notifyListeners();
  }

  // ===================================================
  // 7️⃣ SEND ETH (NON-CUSTODIAL CORE)
  // ===================================================
 Future<bool> sendEthViaBackend({
  required String toAddress,
  required double amount,
  required String token,
}) async {
  if (_privateKey == null || address == null) return false;
  if (amount <= 0 || amount > balance) return false;

  try {
    final to = EthereumAddress.fromHex(toAddress);

    // 🔍 DEBUG CỰC KỲ QUAN TRỌNG
    debugPrint('================ DEBUG SEND TX ================');
    debugPrint('amount (double) = $amount');
    debugPrint('amount.toString() = ${amount.toString()}');

    final valueWei = BigInt.from(
  (amount * 1e18).round(),
);

debugPrint('amount (double) = $amount');
debugPrint('valueWei (BigInt) = $valueWei');

    debugPrint('valueWei = $valueWei');
    debugPrint('valueWei runtimeType = ${valueWei.runtimeType}');
    debugPrint('================================================');

    final rawTx = await WalletService.signTransaction(
      privateKey: _privateKey!,
      from: address!,
      to: to,
      valueWei: valueWei,
    );

    final txHash = await ApiService.sendRawTransaction(
      token: token,
      rawTx: rawTx,
    );

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
  } catch (e, stack) {
    debugPrint("SEND TX ERROR: $e");
    debugPrint("STACKTRACE:\n$stack");
    return false;
  }
}


  // ===================================================
  // 8️⃣ TRANSACTION HISTORY
  // ===================================================
  Future<void> fetchTransactionHistory(String token) async {
    if (address == null) return;

    transactions = await ApiService.getTransactionHistory(
      token: token,
      address: address!.hex,
    );

    notifyListeners();
  }

  // ===================================================
  // 9️⃣ RESET
  // ===================================================
  void reset() {
    mnemonic = null;
    _privateKey = null;
    address = null;
    balance = 0.0;
    transactions.clear();
    notifyListeners();
  }

  // ===================================================
  // 🔑 HELPERS
  // ===================================================
  bool verifyMnemonic(String input) {
    if (mnemonic == null) return false;
    return mnemonic!.trim().toLowerCase() ==
        input.trim().toLowerCase();
  }

  bool get canSignTransaction => _privateKey != null;
}
