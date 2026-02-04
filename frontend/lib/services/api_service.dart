import 'dart:convert';
import 'package:http/http.dart' as http;
import '../core/constants.dart';

class ApiService {
  static Future<bool> healthCheck() async {
    final url = Uri.parse("${AppConstants.backendBaseUrl}/health");
    final response = await http.get(url);
    return response.statusCode == 200;
  }

  static Future<double> getBalance(String address) async {
    final url = Uri.parse(
      "${AppConstants.backendBaseUrl}/balance?address=$address",
    );

    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception("Failed to get balance");
    }

    final data = json.decode(response.body);
    return (data['balance'] as num).toDouble();
  }
  static Future<String> sendRawTransaction(String rawTx) async {
  final url = Uri.parse("${AppConstants.backendBaseUrl}/transaction/send");

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
