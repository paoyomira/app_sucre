// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/widgets/widgets.dart';

class CitizenReportScreen extends StatefulWidget {
  const CitizenReportScreen({Key? key}) : super(key: key);

  @override
  _CitizenReportScreenState createState() => _CitizenReportScreenState();
}

class _CitizenReportScreenState extends State<CitizenReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reporte Ciudadano'),
      ),
      drawer: const MenuWidget(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: const [
          Text('Reportar Incidencia'),
          IncidenceDetailWidget(),
          Divider(),
          IncidenceDescriptionWidget(),
          Divider(),
          Text('Fotos Evidencia'),
          Divider(),
          EvidencePhotosButtonWidget(),
        ],
      ),
    );
  }
<<<<<<< HEAD

  Widget _crearInput() {
    return TextField(
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
        setState(() {});
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
=======
>>>>>>> 3b5b350da0f0c8da6c34918bdf5d22e9bc028661
}
