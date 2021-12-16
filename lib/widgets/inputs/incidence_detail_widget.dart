// Importaciones Flutter
import 'package:app_sucre/services/services.dart';
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/models/models.dart';
import 'package:provider/provider.dart';

class IncidenceDetailWidget extends StatefulWidget {
  const IncidenceDetailWidget({Key? key}) : super(key: key);

  @override
  _IncidenceDetailWidgetState createState() => _IncidenceDetailWidgetState();
}

class _IncidenceDetailWidgetState extends State<IncidenceDetailWidget> {
  @override
  Widget build(BuildContext context) {
    final apiService = Provider.of<ApiService>(context);

    IncidentsResponse? _opcionSeleccionada;

    var lista = apiService.incidents.map((item) {
      return DropdownMenuItem(
        value: item,
        child: Text(item.nombre.toString()),
      );
    }).toList();

    //print(lista);

    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      margin: const EdgeInsets.all(0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButtonFormField(
                  value: _opcionSeleccionada,
                  items: lista,
                  isExpanded: true,
                  onChanged: (opt) {
                    setState(() {
                      _opcionSeleccionada = opt as IncidentsResponse?;
                    });
                  }),
            ),
          )
        ],
      ),
    );
  }
}
