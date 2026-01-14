import 'dart:convert';
import 'package:http/http.dart' as http;
import '../core/constants.dart';

class ApiService {
  static Future<bool> healthCheck() async {
    final url = Uri.parse("${AppConstants.backendBaseUrl}/health");
    final response = await http.get(url);
    return response.statusCode == 200;
  }

  static Future<String> getBalance(String address) async {
    final url = Uri.parse(
        "${AppConstants.backendBaseUrl}/balance/$address");
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception("Failed to get balance");
    }

    final data = json.decode(response.body);
    return data['balance'].toString();
  }
}
