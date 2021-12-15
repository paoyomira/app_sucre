import 'dart:convert';

import 'package:app_sucre/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class ApiService extends ChangeNotifier {
  final String _baseUrl = dotenv.env['API_URL'] ?? '';
  final _storage = const FlutterSecureStorage();
  List<IncidentsTypeResponse> incidentsTypes = [];
  ApiService() {
    // Do Nothing, just Constructor!
    getIncidentTypes();
  }

  getIncidentTypes() async {
    final token = 'Bearer ' + await _readToken();
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': token
    };

    final url = Uri.https(_baseUrl, '/api/listar-tipo-incidencia');
    final response = await http.get(url, headers: requestHeaders);
    print('response vea patron');
    incidentsTypes = _parseList(response.body);
    print(incidentsTypes);
    notifyListeners();
  }

  List<IncidentsTypeResponse> _parseList(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed
        .map<IncidentsTypeResponse>(
            (json) => IncidentsTypeResponse.fromJsonList(json))
        .toList();
  }

  Future<String> _readToken() async {
    return await _storage.read(key: 'token') ?? '';
  }
}
