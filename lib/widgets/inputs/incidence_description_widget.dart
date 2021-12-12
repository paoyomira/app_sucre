// Importaciones Flutter
import 'package:flutter/material.dart';

class IncidenceDescriptionWidget extends StatelessWidget {
  const IncidenceDescriptionWidget({Key? key}) : super(key: key);

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
