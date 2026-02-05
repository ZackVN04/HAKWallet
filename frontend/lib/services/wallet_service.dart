import 'dart:typed_data';

import 'package:bip39/bip39.dart' as bip39;
import 'package:bip32/bip32.dart' as bip32;
import 'package:web3dart/web3dart.dart';
import 'package:hex/hex.dart';
import 'package:http/http.dart'; // chỉ để tạo client giả

class WalletService {
  // ======================
  // MNEMONIC
  // ======================
  static String generateMnemonic() {
    return bip39.generateMnemonic();
  }

  static bool isValidMnemonic(String mnemonic) {
    return bip39.validateMnemonic(mnemonic.trim());
  }

  // ======================
  // PRIVATE KEY
  // ======================
  static EthPrivateKey privateKeyFromMnemonic(String mnemonic) {
    final seed = bip39.mnemonicToSeed(mnemonic.trim());
    final root = bip32.BIP32.fromSeed(seed);
    final child = root.derivePath("m/44'/60'/0'/0/0");

    return EthPrivateKey(
      Uint8List.fromList(child.privateKey!),
    );
  }

  static EthPrivateKey privateKeyFromHex(String hex) {
    return EthPrivateKey.fromHex(hex.trim());
  }

  static EthereumAddress getAddress(EthPrivateKey privateKey) {
    return privateKey.address;
  }

  // ======================
  // SIGN RAW TRANSACTION (ĐÚNG WEB3DART)
  // ======================
  /// Frontend ký transaction (non-custodial)
  /// Backend chỉ nhận raw_tx
  static Future<String> signTransaction({
    required EthPrivateKey privateKey,
    required Transaction transaction,
  }) async {
    // 1️⃣ Tạo Web3Client giả (KHÔNG gửi request)
    final client = Web3Client(
      'https://rpc.sepolia.org', // dummy, KHÔNG dùng để gửi
      Client(),
    );

    // 2️⃣ Serialize + sign transaction
    final Uint8List signedTx = await client.signTransaction(
      privateKey,
      transaction,
      chainId: 11155111, // Sepolia
    );

    // 3️⃣ Uint8List → hex
    return '0x${HEX.encode(signedTx)}';
  }
}
