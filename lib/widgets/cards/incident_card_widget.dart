// Importaciones Flutter
import 'package:app_sucre/screens/reports/citizen_report_screen.dart';
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/models/models.dart';

class IncidentCardWidget extends StatelessWidget {
  final IncidentsTypeResponse incidentsType;

  const IncidentCardWidget({Key? key, required this.incidentsType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        shadowColor: Colors.black87,
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
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: TextButton(
                    child: const Text(
                      'Reportar',
                      style:
                          TextStyle(color: Color(0xff00D4CE), fontSize: 20.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CitizenReportScreen()),
                      );
                    },
                  ),
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
