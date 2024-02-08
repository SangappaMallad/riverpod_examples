import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_integration_examples/model/user_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  String endPoint = 'https://jsonplaceholder.typicode.com/comments';

  Future<List<UserModel>> getAllUsers() async {
    final response = await http.get(Uri.parse(endPoint));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final data = json.map((e) {
        return UserModel(
            id: e['id'], name: e['name'], email: e['email'], body: e['body']);
      }).toList();
      return data;
    }
    return [];
  }
}

final userServiceProvider = Provider<ApiServices>((ref) => ApiServices());
