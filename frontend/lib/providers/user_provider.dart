import 'package:flutter/material.dart';
import '../services/api_service.dart';

class UserProvider extends ChangeNotifier {
  String? userId;
  String? email;
  String? token;
  bool isLoggedIn = false;

  // ======================
  // LOGIN
  // ======================
  Future<bool> login(String inputEmail, String password) async {
    final res = await ApiService.login(inputEmail, password);

    if (res["token"] == null) return false;

    token = res["token"];
    userId = res["user"]["user_id"].toString();
    email = res["user"]["email"];
    isLoggedIn = true;

    notifyListeners();
    return true;
  }

  // ======================
  // REGISTER
  // ======================
  Future<bool> register(String email, String password) async {
    final res = await ApiService.register(email, password);
    return res["status"] == 201;
  }

  void logout() {
    userId = null;
    email = null;
    token = null;
    isLoggedIn = false;
    notifyListeners();
  }
}
