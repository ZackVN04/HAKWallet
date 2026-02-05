import 'dart:convert';
import 'package:http/http.dart' as http;
import '../core/constants.dart';
import '../models/transaction_model.dart';

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
  // WALLET
  // ======================
  static Future<void> saveWallet({
    required String token,
    required String address,
    required String network,
  }) async {
    final url =
        Uri.parse("${AppConstants.backendBaseUrl}/api/wallets");

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

    if (response.statusCode != 200 &&
        response.statusCode != 201) {
      throw Exception("Failed to save wallet");
    }
  }

  // ======================
  // BALANCE
  // ======================
  static Future<double> getBalance({
    required String token,
    required String address,
  }) async {
    final url = Uri.parse(
      "${AppConstants.backendBaseUrl}/api/balance/$address",
    );

    final response = await http.get(
      url,
      headers: {
        "Authorization": "Bearer $token",
      },
    );

    if (response.statusCode != 200) {
      throw Exception("Failed to get balance");
    }

    final data = jsonDecode(response.body);

    // ✅ FIX ĐÚNG CONTRACT BACKEND
    return double.parse(data["balance_eth"]);
  }

  // ======================
  // SEND TX
  // ======================
  static Future<String> sendRawTransaction({
    required String token,
    required String rawTx,
  }) async {
    final url = Uri.parse(
      "${AppConstants.backendBaseUrl}/api/transactions/send",
    );

    final response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      },
      body: jsonEncode({"raw_tx": rawTx}),
    );

    if (response.statusCode != 200) {
      throw Exception("Failed to send transaction");
    }

    final data = jsonDecode(response.body);
    return data["tx_hash"];
  }

  // ======================
  // TRANSACTION HISTORY
  // ======================
  static Future<List<TransactionModel>> getTransactionHistory({
    required String token,
    required String address,
  }) async {
    final url = Uri.parse(
      "${AppConstants.backendBaseUrl}/api/transactions/$address",
    );

    final response = await http.get(
      url,
      headers: {
        "Authorization": "Bearer $token",
      },
    );

    if (response.statusCode != 200) {
      throw Exception("Failed to load transaction history");
    }

    final data = jsonDecode(response.body) as List;
    return data.map((e) => TransactionModel.fromJson(e)).toList();
  }

  // ======================
  // GET USER WALLETS
  // ======================
  static Future<List<dynamic>> getUserWallets(String token) async {
    final url =
        Uri.parse("${AppConstants.backendBaseUrl}/api/wallets");

    final response = await http.get(
      url,
      headers: {
        "Authorization": "Bearer $token",
      },
    );

    if (response.statusCode != 200) {
      throw Exception("Failed to fetch wallets");
    }

    final data = jsonDecode(response.body);
    return data["wallets"] as List;
  }
}
