import 'dart:typed_data';

import 'package:bip39/bip39.dart' as bip39;
import 'package:bip32/bip32.dart' as bip32;
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';
import 'package:hex/hex.dart';

class WalletService {
  /// RPC chỉ dùng để lấy nonce + sign (NON-CUSTODIAL)
  static final Web3Client client = Web3Client(
    'https://eth-sepolia.g.alchemy.com/v2/uKFKNYYLLb8pXBpqyRUmA',
    Client(),
  );

  // ======================
  // MNEMONIC
  // ======================
  static String generateMnemonic() => bip39.generateMnemonic();

  static bool isValidMnemonic(String mnemonic) =>
      bip39.validateMnemonic(mnemonic.trim());

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

  static EthPrivateKey privateKeyFromHex(String hex) =>
      EthPrivateKey.fromHex(hex.trim());

  static EthereumAddress getAddress(EthPrivateKey pk) => pk.address;

  // ======================
  // ✅ SIGN RAW TRANSACTION (FINAL – ĐÚNG CHUẨN ETH)
  // ======================
  static Future<String> signTransaction({
    required EthPrivateKey privateKey,
    required EthereumAddress from,
    required EthereumAddress to,
    required BigInt valueWei,
  }) async {
    // 1️⃣ NONCE
    final nonce = await client.getTransactionCount(
      from,
      atBlock: const BlockNum.pending(),
    );

    // 2️⃣ BUILD TX (❗ KHÔNG DÙNG DOUBLE)
    final tx = Transaction(
      from: from,
      to: to,
      value: EtherAmount.inWei(valueWei),
      gasPrice: EtherAmount.inWei(
        BigInt.parse('20000000000'), // 20 gwei
      ),
      maxGas: 21000,
      nonce: nonce,
    );

    // 3️⃣ SIGN
    final signedTx = await client.signTransaction(
      privateKey,
      tx,
      chainId: 11155111, // Sepolia
    );

    // 4️⃣ HEX
    return '0x${HEX.encode(signedTx)}';
  }
}
