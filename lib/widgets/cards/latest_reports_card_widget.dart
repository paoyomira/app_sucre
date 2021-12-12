import 'package:flutter/material.dart';

class LatestReportsCardWidget extends StatelessWidget {
  const LatestReportsCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              title: Text(
                'Incidencia # 1',
                style: TextStyle(height: 2.0),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam accumsan eros non elit lobortis, eu aliquam arcu euismod. Morbi turpis lectus, sollicitudin eget vestibulum in, porta ut nulla. Aliquam sit amet porttitor odio. ',
                style: TextStyle(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Tipo Incidencia'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Estado'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
