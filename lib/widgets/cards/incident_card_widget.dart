import 'package:flutter/material.dart';

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
              title: Text('The Enchanted Nightingale'),
              subtitle: Text(
                  'Music by Julie Gable. Lyrics by usic by Julie Gable. Lyrics busic by Julie Gable. Lyrics busic by Julie Gable. Lyrics bSidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Reportar'),
                  onPressed: () {/* ... */},
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
