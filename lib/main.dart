import 'package:app_sucre/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'initial',
      routes: {
        '/': (BuildContext context) => HomeScreen(),
        'login': (BuildContext context) => LoginScreen(),
        'register': (BuildContext context) => RegisterScreen(),
        'incidents': (BuildContext context) => IncidentsScreen(),
        'citizenreport': (BuildContext context) => citizenReportScreen(),
        'initial': (BuildContext context) => InitialScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
