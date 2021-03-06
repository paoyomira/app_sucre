// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/services/services.dart';
import 'package:app_sucre/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../screens.dart';

class IncidentsScreen extends StatelessWidget {
  static const String routeName = 'incidents';

  const IncidentsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final apiService = Provider.of<ApiService>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Incidencias'),
        ),
        // drawer: const MenuWidget(),
        body: Container(
            color: const Color(0xffF8FAFB),
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            child: ListView.builder(
                itemCount: apiService.incidentsTypes.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (_, int index) => IncidentCardWidget(
                    incidentsType: apiService.incidentsTypes[index]))));
  }
}
