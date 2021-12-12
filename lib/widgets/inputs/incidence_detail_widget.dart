// Importaciones Flutter
import 'package:flutter/material.dart';

class IncidenceDetailWidget extends StatefulWidget {
  const IncidenceDetailWidget({Key? key}) : super(key: key);

  @override
  _IncidenceDetailWidgetState createState() => _IncidenceDetailWidgetState();
}

class _IncidenceDetailWidgetState extends State<IncidenceDetailWidget> {
  @override
  Widget build(BuildContext context) {
    String _opcionSeleccionada = 'Orange';
    final List<String> _poderes = ['Orange', 'watermelon', 'Pineapple'];

    List<DropdownMenuItem<String>> getopciones() {
      List<DropdownMenuItem<String>> lista = [];
      _poderes.forEach((poder) {
        lista.add(DropdownMenuItem(
          child: Text(poder),
          value: poder,
        ));
      });
      return lista;
    }

    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      margin: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButtonFormField(
                  value: _opcionSeleccionada,
                  items: getopciones(),
                  isExpanded: true,
                  onChanged: (opt) {
                    setState(() {
                      _opcionSeleccionada = opt.toString();
                    });
                  }),
            ),
          )
        ],
      ),
    );
  }
}
