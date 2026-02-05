import 'dart:convert';
import 'package:http/http.dart' as http;
import '../core/constants.dart';

class ApiService {
  // ======================
  // HEALTH
  // ======================
  static Future<bool> healthCheck() async {
    final url = Uri.parse("${AppConstants.backendBaseUrl}/health");
    final response = await http.get(url);
    return response.statusCode == 200;
  }

  // ======================
  // AUTH
  // ======================
  static Future<Map<String, dynamic>> register(
    String email,
    String password,
  ) async {
    final url = Uri.parse(
      "${AppConstants.backendBaseUrl}/api/auth/register",
    );

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    return {
      "status": response.statusCode,
      ...jsonDecode(response.body),
    };
  }

  static Future<Map<String, dynamic>> login(
    String email,
    String password,
  ) async {
    final url = Uri.parse(
      "${AppConstants.backendBaseUrl}/api/auth/login",
    );

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    return {
      "status": response.statusCode,
      ...jsonDecode(response.body),
    };
  }

  // ======================
  // WALLET (JWT REQUIRED)
  // ======================
  static Future<void> saveWallet({
    required String token,
    required String address,
    required String network,
  }) async {
    final url = Uri.parse(
      "${AppConstants.backendBaseUrl}/api/wallets",
    );

    final response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      },
      body: jsonEncode({
        "eth_address": address,
        "network": network,
      }),
    );

    if (response.statusCode != 201 &&
        response.statusCode != 200) {
      throw Exception("Failed to save wallet");
    }
  }

  // ======================
  // BALANCE (GIỮ NGUYÊN)
  // ======================
  static Future<double> getBalance(String address) async {
    final url = Uri.parse(
      "${AppConstants.backendBaseUrl}/balance?address=$address",
    );

    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception("Failed to get balance");
    }

    final data = jsonDecode(response.body);
    return (data["balance"] as num).toDouble();
  }

  // ======================
  // SEND TX (GIỮ NGUYÊN)
  // ======================
  static Future<String> sendRawTransaction(String rawTx) async {
    final url = Uri.parse(
      "${AppConstants.backendBaseUrl}/transaction/send",
    );

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"raw_tx": rawTx}),
    );

    if (response.statusCode != 200) {
      throw Exception("Failed to send transaction");
    }

    final data = jsonDecode(response.body);
    return data["tx_hash"];
  }
}
