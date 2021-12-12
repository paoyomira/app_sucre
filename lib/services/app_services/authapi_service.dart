import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier {
  final String _baseUrl = 'wsapp.sucre.gob.ec';
  final storage = const FlutterSecureStorage();

  Future<String?> loginUser(String username, String password) async {
    final Map<String, dynamic> authData = {
      'username': '1701312645', //email,
      'password': 'jose1995' // password
    };
    final url = Uri.https(_baseUrl, '/api/loginmobile', authData);

    final response = await http.get(url);
    // final response = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodedResponse = json.decode(response.body);
    if (decodedResponse.containsKey('access_token')) {
      await storage.write(key: 'token', value: decodedResponse['access_token']);
      await storage.write(key: 'userEmail', value: decodedResponse['email']);
      await storage.write(key: 'userName', value: decodedResponse['name']);
      return null;
    } else {
      // print(decodedResponse['error']);
      return decodedResponse['error'];
    }
  }

  Future logout() async {
    await storage.delete(key: 'token');
    await storage.delete(key: 'email');
    await storage.delete(key: 'name');
    return;
  }

  Future<String> readToken() async {
    return await storage.read(key: 'token') ?? '';
  }
}
