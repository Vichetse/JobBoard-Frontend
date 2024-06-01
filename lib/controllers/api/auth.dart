import 'dart:convert';

import 'package:admin/services/service.dart';
import 'package:http/http.dart' as http;

class Auth {
  Future<http.Response> authentication(
      Map<String, dynamic> data, String apiUrl) async {
    var fullUrl = Uri.parse('$baseURL$apiUrl');
    return await client.post(
      fullUrl,
      body: jsonEncode(data),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
  }
}
