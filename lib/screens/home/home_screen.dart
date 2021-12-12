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
          children: [
            TableRow(children: [
              _HomeCard(),
              _HomeCard(),
            ]),
            TableRow(children: [
              _HomeCard(),
              _HomeCard(),
            ]),
          ],
        ));
  }
}

class _HomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.pie_chart_outline_rounded,
              size: 35,
            ),
            radius: 30,
          ),
          SizedBox(height: 10),
          Text(
            'General',
            style: TextStyle(color: Colors.black, fontSize: 18),
          )
        ],
      ),
    );
  }
}
