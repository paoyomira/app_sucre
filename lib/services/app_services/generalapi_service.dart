import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'package:app_sucre/models/models.dart';
import 'package:app_sucre/providers/app_providers/citizen_report_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';

class ApiService extends ChangeNotifier {
  final String _baseUrl = dotenv.env['API_URL'] ?? '';
  final _storage = const FlutterSecureStorage();
  var _location = Location();
  Map<String, String> _requestHeaders = {};

  List<IncidentsTypeResponse> incidentsTypes = [];
  List<IncidentsResponse> incidents = [];
  List<ReportResponse> reports = [];
  List<SearchIncidentsTypeResponse> incidentsSearch = [];

  ApiService() {
    _getLocationPermission();
    getIncidentTypes();
    getReports();
    getIncidents();
  }

  getIncidents() async {
    await _readToken();
    final url = Uri.https(_baseUrl, '/api/listar-incidencia');
    final response = await http.get(url, headers: _requestHeaders);
    var responseJson = jsonDecode(response.body);
    incidents = responseJson
        .cast<Map<String, dynamic>>()
        .map<IncidentsResponse>((json) => IncidentsResponse.fromJsonList(json))
        .toList();
    if (response.statusCode == 200) {
      var responseJson = jsonDecode(response.body);
      incidents = responseJson
          .cast<Map<String, dynamic>>()
          .map<IncidentsResponse>(
              (json) => IncidentsResponse.fromJsonList(json))
          .toList();
    } else {
      if (response.statusCode == 401) {
        // authService.logout();
        // throw Exception('Failed to load post');

      } else {}
    }
    notifyListeners();
    return incidents;
  }

  getIncidentTypes() async {
    await _readToken();
    final url = Uri.https(_baseUrl, '/api/listar-tipo-incidencia');
    final response = await http.get(url, headers: _requestHeaders);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.statusCode);
      var responseJson = jsonDecode(response.body);
      print(responseJson);
      incidentsTypes = responseJson
          .cast<Map<String, dynamic>>()
          .map<IncidentsTypeResponse>(
              (json) => IncidentsTypeResponse.fromJsonList(json))
          .toList();
      notifyListeners();
      return incidentsTypes;
    } else {
      if (response.statusCode == 401) {
        // authService.logout();
        //Navigator.pushReplacementNamed(context, 'login');
      } else {}
    }

    notifyListeners();
    return incidentsTypes;
  }

  getReports() async {
    await _readToken();
    final Map<String, dynamic> dateRange = {
      'fechadesde': DateTime.now().add(const Duration(days: -30)).toString(),
      'fechahasta': DateTime.now().toString()
    };
    // print(dateRange);

    final url =
        Uri.https(_baseUrl, 'api/listar-reporte-incidencia-fecha', dateRange);
    final response = await http.get(url, headers: _requestHeaders);
    if (response.statusCode == 200) {
      var responseJson = jsonDecode(response.body);
      reports = responseJson
          .cast<Map<String, dynamic>>()
          .map<ReportResponse>((json) => ReportResponse.fromJsonList(json))
          .toList();
    } else {
      if (response.statusCode == 401) {
        // authService.logout();
        // throw Exception('Failed to load post');
      } else {}
    }
    notifyListeners();
    return reports;
  }

  saveReport(CitizerReportFormProvider form) async {
    await _readToken();
    LocationData currentLocation = await _location.getLocation();
    final Map<String, dynamic> report = {
      'id': '0',
      'incidenciaid': form.selectedOption!.id.toString(),
      'descripcion': form.description,
      'fechareporte': DateTime.now().toString(),
      'usuarioreporteid': '0',
      'latitud': currentLocation.latitude.toString(),
      'longitud': currentLocation.longitude.toString(),
      'estadoreporte': 'grabado',
    };

    final url = Uri.https(_baseUrl, 'api/crear-reporte-incidencia');

    final response =
        await http.post(url, body: report, headers: _requestHeaders);

    // Save all Image to FileServer
    final imageUrl =
        Uri.https(_baseUrl, 'api/cargar-imagen-reporte-incidencia');
    for (var i = 0; i < form.imageArray.length; i++) {
      // Todo: Api Debería devolver el Id de Reporte

      var length = await form.imageArray[i].length();
      var stream = form.imageArray[i].openRead(0, length);

      var request = http.MultipartRequest("POST", imageUrl);

      var multipartFile = http.MultipartFile('file', stream, length,
          filename: basename(form.imageArray[i].path));
      request.headers.addAll(_requestHeaders);
      request.fields['reporteid'] = '16';
      request.fields['nombre'] = form.imageArray[i].name;
      request.fields['extension'] = form.imageArray[i].mimeType!;
      request.fields['tipodocumentoid'] = '';
      request.fields['urlrepositorio'] = '';
      request.files.add(multipartFile);
      await request.send();
    }

    notifyListeners();
    return response;
  }

  // _saveImages(List<XFile> imageArray) async {

  // }

  getIncidentsSearch() async {
    final url = Uri.https(_baseUrl, 'api/buscar-incidencia-por-tipo');
    final response = await http.get(url, headers: _requestHeaders);
    if (response.statusCode == 200) {
      incidentsSearch = jsonDecode(response.body)
          .cast<Map<String, dynamic>>()
          .map<SearchIncidentsTypeResponse>(
              (json) => SearchIncidentsTypeResponse.fromJsonList(json))
          .toList();
    } else {
      if (response.statusCode == 401) {
        // authService.logout();
        // throw Exception('Failed to load post');
      } else {}
    }

    notifyListeners();
  }

  _getLocationPermission() async {
    // Enable Service
    var _serviceEnabled = await _location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await _location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
    // Request Permission
    var _permissionGranted = await _location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _location.requestPermission();

      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }

  _readToken() async {
    final String token = await _storage.read(key: 'token') ?? '';
    _requestHeaders = {
      // HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer ' + token
    };
  }
}
