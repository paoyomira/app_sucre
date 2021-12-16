// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación

class IncidenceDescriptionWidget extends StatelessWidget {
  const IncidenceDescriptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: 2,
      maxLines: 6,
      // autofocus: true,
      decoration: InputDecoration(
        hintText: 'Descripción del Reporte',
        labelText: 'Descripción',
        hoverColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff24d7ca), width: 2.0),
          borderRadius: BorderRadius.circular(15.0),
        ),
        fillColor: Colors.white,
        filled: true,
        floatingLabelStyle: TextStyle(
          color: Colors.black87,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),

        // suffixIcon: const Icon(Icons.description_outlined),
      ),
      onChanged: (valor) {},
    );
  }
}
