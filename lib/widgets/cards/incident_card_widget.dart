import 'package:flutter/material.dart';
import 'package:app_sucre/screens/screens.dart';

class IncidentCardWidget extends StatelessWidget {
  const IncidentCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              title: Text('Incidencia # 1'),
              subtitle: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nulla metus, tempor ut metus vel, varius gravida ligula. Morbi nec cursus magna. '),
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
                          builder: (context) => const CitizenReportScreen()),
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
