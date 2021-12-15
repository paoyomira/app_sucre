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
        body: ListView(
          children: [
            Table(
              children: [
                TableRow(children: [
                  HomeText(),
                ]),
                TableRow(children: [
                  HomeCardWidget(),
                ]),
                TableRow(children: [
                  HomeCardWidget(),
                ]),
                TableRow(children: [
                  HomeCardWidget(),
                ]),
              ],
            )
          ],
        ));
  }
}

Widget HomeText() {
  return Container(
    child: Column(
      children: [
        Text('Hola Eduardo'),
        SizedBox(height: 10.0),
        Text('Bienvenido al Portal de Incidencias'),
        SizedBox(height: 10.0),
      ],
    ),
  );
}
