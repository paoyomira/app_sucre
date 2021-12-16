import 'package:app_sucre/models/models.dart';
import 'package:flutter/material.dart';

class CitizerReportFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

// Actualizar los campos
  String email = '';
  String password = '';
  IncidentsResponse? selectedOption;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool isValidForm() {
    return formKey.currentState?.validate() ?? false;
  }
}
