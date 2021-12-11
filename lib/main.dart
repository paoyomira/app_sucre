import 'package:app_sucre/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'citizenreport',
      routes: {
        'home': (BuildContext context) => const HomeScreen(),
        'login': (BuildContext context) => const LoginScreen(),
        'register': (BuildContext context) => const RegisterScreen(),
        'incidents': (BuildContext context) => const IncidentsScreen(),
        'citizenreport': (BuildContext context) => const citizenReportScreen(),
        'initial': (BuildContext context) => const InitialScreen(),
        'latestreports': (BuildContext context) => const LatestReportsScreen(),
      },
      theme: ThemeData(fontFamily: 'Raleway'),
      // theme: ThemeData.light().copyWith(
      //   scaffoldBackgroundColor: Colors.white,
      // ),
    );
  }
}
