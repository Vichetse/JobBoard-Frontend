import 'dart:convert';
import 'package:admin/services/service.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class APIService {
  //-------GET------//
  Future<List<dynamic>> GET(String apiUrl) async {
   var token = await AuthManager.getToken();
    var fullUrl = Uri.parse('$baseURL$apiUrl');

    var response = await client.get(
      fullUrl,
      headers: _setHeaders(token),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)['data'];
    } else {
      throw Exception('Failed to load resources');
    }
  }

  //-------POST------//
  Future<http.Response> POST(Map<String, dynamic> data, String apiUrl) async {
    var token = await AuthManager.getToken();
    var fullUrl = Uri.parse('$baseURL$apiUrl');
    return await client.post(
      fullUrl,
      body: jsonEncode(data),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
  }

  //-------UPDATE------//
  Future<http.Response> UPDATE(Map<String, dynamic> data, String apiUrl) async {
    var token = await AuthManager.getToken();
    var fullUrl = Uri.parse('$baseURL$apiUrl');

    return await client.put(
      fullUrl,
      body: jsonEncode(data),
      headers: _setHeaders(token),
    );
  }

  //-------DELETE------//
  Future<http.Response> DELETE(String apiUrl) async {
    var token = await AuthManager.getToken();
    var fullUrl = Uri.parse('$baseURL$apiUrl');

    return await client.delete(
      fullUrl,
      headers: _setHeaders(token),
    );
  }

  _setHeaders(token) => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      };
}

class AuthManager {
  static Future<String?> getToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('token');
  }
  static Future<String?> getUserId() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('user_id');
  }
   static Future<String?> getName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('name');
  }
}
