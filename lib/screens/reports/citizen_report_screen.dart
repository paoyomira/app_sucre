// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:app_sucre/services/services.dart';

class CitizenReportScreen extends StatefulWidget {
  const CitizenReportScreen({Key? key}) : super(key: key);

  @override
  _CitizenReportScreenState createState() => _CitizenReportScreenState();
}

class _CitizenReportScreenState extends State<CitizenReportScreen> {
  @override
  Widget build(BuildContext context) {
    final apiService = Provider.of<ApiService>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Reporte Ciudadano'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          itemCount: apiService.incidents.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (_, int index) =>
              IncidenceDetailWidget(incident: apiService.incidents[index]),
        ));

    // const Text('Reportar Incidencia'),
    // const SizedBox(
    //   height: 20.0,
    // ),
    // const IncidenceDetailWidget(),
    // const SizedBox(
    //   height: 20.0,
    // ),
    // const IncidenceDescriptionWidget(),
    // const SizedBox(
    //   height: 20.0,
    // ),
    // const Text('Fotos Evidencia'),
    // const SizedBox(
    //   height: 20.0,
    // ),
    // const SizedBox(
    //   height: 20.0,
    // ),
    // TextButton(onPressed: () {}, child: const Text('Tomar Fotografia')),
    // const SizedBox(
    //   height: 20.0,
    // ),
    // const EvidencePhotosButtonWidget(),
  }
}
