// Importaciones Flutter
import 'package:app_sucre/screens/incidents/incidents_screen.dart';
import 'package:app_sucre/screens/reports/latest_reports_screen.dart';
import 'package:app_sucre/services/app_services/authapi_service.dart';
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/widgets/widgets.dart';
import 'package:provider/provider.dart';

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
            HomeAvatar(),
            HomeText(),
            HomeTextFinal(),
            Table(
              children: const [
                TableRow(children: [
                  HomeCardWidget(
                      url: IncidentsScreen(),
                      textButton: 'Hacer un Reporte',
                      icon: Icons.source_rounded),
                  HomeCardWidget(
                      url: LatestReportsScreen(),
                      textButton: 'Mis reportes',
                      icon: Icons.folder_rounded),
                ]),
              ],
            ),
            const OutHomeButton(),
          ],
        ));
  }
}

Widget HomeText() {
  return Container(
    padding: const EdgeInsets.all(30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 20.0),
        Text('Hola Eduardo'),
        SizedBox(height: 20.0),
        Text('Bienvenido al Portal de Incidencias'),
      ],
    ),
  );
}

Widget HomeTextFinal() {
  return Container(
    padding: const EdgeInsets.all(30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        Text('¿Qué deseas hacer?'),
      ],
    ),
  );
}

Widget HomeAvatar() {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
          height: 120,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/img/home.png'),
            fit: BoxFit.fill,
          ))),
      Positioned(
          bottom: -20,
          left: 200,
          right: 0,
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/programmer.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(52.0))),
            ),
          ))
    ],
  );
}

class OutHomeButton extends StatelessWidget {
  const OutHomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextButton(
          onPressed: () {
            authService.logout();
            Navigator.pushReplacementNamed(context, 'login');
          },
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Salir',
              style: TextStyle(
                color: Color(0xff00D4CE),
                fontSize: 25.0,
              ),
            ),
          ),
          style: TextButton.styleFrom(
              elevation: 10.0,
              shadowColor: Colors.black,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ))),
    );
  }
}
