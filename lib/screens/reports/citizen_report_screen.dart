// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/widgets/widgets.dart';

// ignore: camel_case_types
class citizenReportScreen extends StatefulWidget {
  const citizenReportScreen({Key? key}) : super(key: key);

  @override
  _CitizenReportScreenState createState() => _CitizenReportScreenState();
}

class _CitizenReportScreenState extends State<citizenReportScreen> {
  String _nombre = '';

  String _opcionSeleccionada = 'Orange';
  final List<String> _poderes = ['Orange', 'watermelon', 'Pineapple'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reporte Ciudadano'),
      ),
      drawer: const MenuWidget(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          const Divider(),
          _crearInput(),
          const Divider(),
          _citizenReport(),
          _crearDropdown()
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextFormField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'Detalle Incidencia',
        labelText: 'Incendio Domestico',
        suffixIcon: const Icon(Icons.accessibility),
        icon: const Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        _nombre = valor;
        setState(() {
          print(_nombre);
        });
      },
    );
  }

  Widget _citizenReport() {
    return TextFormField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'Nombre',
        labelText: 'Nombre',
        suffixIcon: const Icon(Icons.accessibility),
        icon: const Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        _nombre = valor;
        setState(() {
          print(_nombre);
        });
      },
    );
  }

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

  Widget _crearDropdown() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 4),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      margin: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          const Icon(Icons.select_all),
          SizedBox(width: 30.0),
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
