// Importaciones Flutter
import 'package:app_sucre/screens/reports/citizen_report_screen.dart';
import 'package:app_sucre/services/app_services/authapi_service.dart';
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/models/models.dart';
import 'package:provider/provider.dart';

class IncidentCardWidget extends StatelessWidget {
  final IncidentsTypeResponse incidentsType;

  const IncidentCardWidget({Key? key, required this.incidentsType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(incidentsType.name),
              subtitle: Text(incidentsType.descripcion),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Reportar'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CitizenReportScreen()),
                    );
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget initialTextIncidents() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [Text('Excelente!')],
  );
}
