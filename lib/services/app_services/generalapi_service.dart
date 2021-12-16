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
  Map<String, String> _requestHeaders = {};

  List<IncidentsTypeResponse> incidentsTypes = [];
  List<IncidentsResponse> incidents = [];
  List<ReportResponse> reports = [];
  List<SearchIncidentsTypeResponse> incidentsSearch = [];

  ApiService() {
    getIncidentTypes();
  }

  getIncidents() async {
    final url = Uri.https(_baseUrl, '/api/listar-incidencia');
    final response = await http.get(url, headers: _requestHeaders);
    incidents = jsonDecode(response.body)
        .cast<Map<String, dynamic>>()
        .map<IncidentsResponse>((json) => IncidentsResponse.fromJsonList(json))
        .toList();

    notifyListeners();
  }

  getIncidentTypes() async {
    await _readToken();
    final url = Uri.https(_baseUrl, '/api/listar-tipo-incidencia');
    final response = await http.get(url, headers: _requestHeaders);
    print(_requestHeaders);
    print('la response');
    var responseJson = jsonDecode(response.body);
    incidentsTypes = responseJson
        .cast<Map<String, dynamic>>()
        .map<IncidentsTypeResponse>(
            (json) => IncidentsTypeResponse.fromJsonList(json))
        .toList();

    notifyListeners();
    return incidentsTypes;
  }

  getReports() async {
    final url = Uri.https(_baseUrl, 'api/listar-reporte-incidencia-fecha');
    final response = await http.get(url, headers: _requestHeaders);

    reports = jsonDecode(response.body)
        .cast<Map<String, dynamic>>()
        .map<ReportResponse>((json) => ReportResponse.fromJsonList(json))
        .toList();

    notifyListeners();
  }

  getIncidentsSearch() async {
    final url = Uri.https(_baseUrl, 'api/buscar-incidencia-por-tipo');
    final response = await http.get(url, headers: _requestHeaders);

    incidentsSearch = jsonDecode(response.body)
        .cast<Map<String, dynamic>>()
        .map<SearchIncidentsTypeResponse>(
            (json) => SearchIncidentsTypeResponse.fromJsonList(json))
        .toList();

    notifyListeners();
  }

  _readToken() async {
    final String token = await _storage.read(key: 'token') ?? '';
    _requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + token
    };
  }
}
