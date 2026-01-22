import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String? userId;
  String? email;
  bool isLoggedIn = false;

  /// MOCK LOGIN (backend sẽ thay sau)
  Future<bool> login(String inputEmail, String password) async {
    await Future.delayed(const Duration(milliseconds: 500));

    // MOCK validate
    if (inputEmail.isEmpty || password.isEmpty) return false;

    userId = 'mock-user-id';
    email = inputEmail;
    isLoggedIn = true;
    notifyListeners();
    return true;
  }

  void logout() {
    userId = null;
    email = null;
    isLoggedIn = false;
    notifyListeners();
  }
  Future<bool> register(String email, String password) async {
  await Future.delayed(const Duration(milliseconds: 500));

  if (email.isEmpty || password.length < 6) {
    return false;
  }

  // MOCK register success
  return true;
}

}
