import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Apiresponse> login (String email, String password) async {
  Apiresponse apiresponse = Apiresponse();
   final response = await http.post(
      Uri.parse('/login'),
      headers: {'Accept': 'application/json'},
      body:('email':email, 'password' :password)
    );
    if (response.statusCode == 201) {
      return apiresponse.data = User.fromJson(jsonDacode(response.body));
    } else {
      throw Exception('Failed to login!');
    }
}