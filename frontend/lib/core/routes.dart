import 'package:flutter/material.dart';
import '../screens/create_wallet/create_wallet_screen.dart';
import '../screens/verify_mnemonic/verify_mnemonic_screen.dart';
import '../screens/import_wallet/import_wallet_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/send/send_screen.dart';
import '../screens/history/history_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/register_screen.dart';
class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String createWallet = '/create-wallet';
  static const String verifyMnemonic = '/verify-mnemonic';
  static const String importWallet = '/import-wallet';
  static const String home = '/home';
  static const String send = '/send';
  static const String history = '/history';
  static const String settings = '/settings';


  static Map<String, WidgetBuilder> routes = {
    login: (_) => const LoginScreen(),
    register: (_) => const RegisterScreen(),
    createWallet: (_) => const CreateWalletScreen(),
    verifyMnemonic: (_) => const VerifyMnemonicScreen(),
    importWallet: (_) => const ImportWalletScreen(),
    home: (_) => const HomeScreen(),
    send: (_) => const SendScreen(),
    history: (_) => const HistoryScreen(),
    settings: (_) => const SettingsScreen(),

  };
}
