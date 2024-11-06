import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

Future<bool> createAccount(String email, String password) async {
  try {
    const String url = 'http://localhost:5000/api/v1/user/signup';

    var body = {
        'email': email,
        'password': password,
      };

    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: json.encode(body),
    );

    if (response.statusCode == 200) {
      log('response: ${response.body}');
      return true;
    } else {
      log('response: ${response.body}');
      return false;
    }
  } catch (e) {
    log(e.toString());
    return false;
  }
}
