import 'package:app_sucre/models/models.dart';
import 'package:flutter/material.dart';
import 'package:app_sucre/screens/screens.dart';

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
