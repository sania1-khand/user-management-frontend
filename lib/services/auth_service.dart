import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthService {
  static const String baseUrl = 'https://localhost:7273/api/Auth';

  static Future<Map<String, dynamic>> signup({
    required String fullName,
    required String email,
    required String phoneNumber,
    required String password,
  }) async {
    final Uri url = Uri.parse('$baseUrl/signup');

    final http.Response response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({
        'fullName': fullName,
        'email': email,
        'phoneNumber': phoneNumber,
        'password': password,
      }),
    );

    final Map<String, dynamic> responseData =
        jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode == 200) {
      return responseData;
    }

    throw Exception(
      responseData['message'] ??
          responseData['title'] ??
          'Signup failed',
    );
  }

  static Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    final Uri url = Uri.parse('$baseUrl/login');

    final http.Response response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    final Map<String, dynamic> responseData =
        jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode == 200) {
      return responseData;
    }

    throw Exception(
      responseData['message'] ??
          responseData['title'] ??
          'Login failed',
    );
  }
}