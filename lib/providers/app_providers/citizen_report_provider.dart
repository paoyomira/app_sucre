import 'package:app_sucre/models/models.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CitizerReportFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

// Actualizar los campos
  String email = '';
  String password = '';
  IncidentsResponse? selectedOption;
  String description = '';
  // Have a List of Photos
  List<XFile> imageArray = [];

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
