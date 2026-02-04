import 'dart:typed_data';
import 'package:bip39/bip39.dart' as bip39;
import 'package:bip32/bip32.dart' as bip32;
import 'package:web3dart/web3dart.dart';
import 'package:hex/hex.dart';

class WalletService {
  /// Generate 12-word mnemonic
  static String generateMnemonic() {
    return bip39.generateMnemonic();
  }

  /// Validate mnemonic
  static bool isValidMnemonic(String mnemonic) {
    return bip39.validateMnemonic(mnemonic.trim());
  }

  /// Derive private key from mnemonic (BIP44)
  static EthPrivateKey privateKeyFromMnemonic(String mnemonic) {
    final seed = bip39.mnemonicToSeed(mnemonic.trim());
    final root = bip32.BIP32.fromSeed(seed);

    final child = root.derivePath("m/44'/60'/0'/0/0");

    return EthPrivateKey(
      Uint8List.fromList(child.privateKey!),
    );
  }

  /// Import private key from hex string
  static EthPrivateKey privateKeyFromHex(String hex) {
    return EthPrivateKey.fromHex(hex.trim());
  }

  /// Get Ethereum address
  static EthereumAddress getAddress(EthPrivateKey privateKey) {
    return privateKey.address;
  }

  /// ⚠️ DEBUG ONLY – không dùng production
  static String privateKeyHex(EthPrivateKey key) {
    return HEX.encode(key.privateKey);
  }
}
