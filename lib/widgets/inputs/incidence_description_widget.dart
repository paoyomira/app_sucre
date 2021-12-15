// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/models/models.dart';

class IncidenceDescriptionWidget extends StatelessWidget {
  final IncidentsResponse incident;
  const IncidenceDescriptionWidget({Key? key, required this.incident})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'Descripcion de la incidencia',
        labelText: 'Descripción',
        suffixIcon: const Icon(Icons.description_rounded),
      ),
      onChanged: (valor) {},
    );
  }
}
