import 'package:flutter/material.dart';
import 'package:app_sucre/widgets/widgets.dart';

class LatestReportsScreen extends StatelessWidget {
  const LatestReportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Últimos Reportes')),
        drawer: const MenuWidget(),
        body: Container(
            color: const Color(0xffF8FAFB),
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    incidentsCards(),
                    const SizedBox(height: 20.0),
                    incidentsCards(),
                    const SizedBox(height: 20.0),
                    incidentsCards(),
                  ],
                ),
              ],
            )));
  }

  Widget incidentsCards() {
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
