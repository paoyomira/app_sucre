// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Inicio')),
        drawer: const MenuWidget(),
        body: Table(
          children: const [
            TableRow(children: [
              HomeCardWidget(),
              HomeCardWidget(),
            ]),
            TableRow(children: [
              HomeCardWidget(),
              HomeCardWidget(),
            ]),
          ],
        ));
  }
}
