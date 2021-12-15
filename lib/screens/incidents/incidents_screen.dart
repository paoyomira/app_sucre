// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/widgets/widgets.dart';

class IncidentsScreen extends StatelessWidget {
  static const String routeName = 'incidents';

  const IncidentsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Incidencias'),
        ),
        drawer: const MenuWidget(),
        body: Container(
            color: const Color(0xffF8FAFB),
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            child: ListView(
              children: const [
                SearchBarWidget(),
                IncidentCardWidget(),
                SizedBox(height: 20.0),
                IncidentCardWidget(),
                SizedBox(height: 20.0),
                IncidentCardWidget(),
              ],
            )));
  }
}
