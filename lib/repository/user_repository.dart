import 'dart:convert';

import 'package:admin/models/user.dart';
import 'package:admin/repository/repository.dart';
import 'package:admin/services/api_service.dart';
import 'package:admin/services/service.dart';

class UserRepository implements RepositoryUser {
  @override
  Future<String> deleteUser(User user) async {
    var url = Uri.parse('$baseURL/user/${user.id}');
    var result = 'false';

    try {
      var response = await client.delete(url);
      if (response.statusCode == 200) {
        result = 'true';
      } else {
        print('Failed to delete user: ${response.body}');
      }
    } catch (e) {
      print('Failed to delete user: $e');
    }

    return result;
  }

  @override
  Future<List<User>> getUser() async {
    var token = await AuthManager.getToken();
    var url = Uri.parse('$baseURL/user');
    var response = await client.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data.containsKey('users') && data['users'] is List) {
        return (data['users'] as List)
            .map((json) => User.fromJson(json))
            .toList();
      } else {
        throw Exception('Failed to load users: Invalid data format');
      }
    } else {
      throw Exception('Failed to load users');
    }
  }

}
