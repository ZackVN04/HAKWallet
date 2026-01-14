import 'package:flutter/material.dart';

class WalletProvider extends ChangeNotifier {
  String? walletAddress;
  String balance = "0";

  void setWalletAddress(String address) {
    walletAddress = address;
    notifyListeners();
  }

  void setBalance(String value) {
    balance = value;
    notifyListeners();
  }
}
