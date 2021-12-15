import 'package:flutter/material.dart';
// import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class ApiService extends ChangeNotifier {
  String _baseUrl = '';

  ApiServicesProvider() {
    print('Initialize ApiServicesProvider');
  }
}
