// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
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
                  children: const [
                    LatestReportsCardWidget(),
                    SizedBox(height: 20.0),
                    LatestReportsCardWidget(),
                    SizedBox(height: 20.0),
                    LatestReportsCardWidget(),
                  ],
                ),
              ],
            )));
  }
}
