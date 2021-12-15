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
        children: [
          Text('Reportar Incidencia'),
          IncidenceDetailWidget(),
          SizedBox(
            height: 20.0,
          ),
          IncidenceDescriptionWidget(),
          SizedBox(
            height: 20.0,
          ),
          Text('Fotos Evidencia'),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          TextButton(onPressed: () {}, child: Text('Tomar Fotografia')),
          SizedBox(
            height: 20.0,
          ),
          EvidencePhotosButtonWidget(),
        ],
      ),
    );
  }
}
