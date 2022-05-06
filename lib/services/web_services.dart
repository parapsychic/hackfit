import 'dart:convert';

import '../models/user_model/user.dart';
import 'package:http/http.dart' as http;

class WebService {
  static const String url = "localhost:3000";

  static Future<List<User>> getRequest() async {
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    List<User> users = [];
    for (var singleUser in responseData) {
      User user = User(
        id: singleUser["id"],
        name: singleUser["name"],
        level: singleUser["level"],
      );
      users.add(user);
    }
    return users;
  }
}
