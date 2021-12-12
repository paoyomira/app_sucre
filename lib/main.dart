import 'package:app_sucre/providers/external_providers/apiservices_provider.dart';
import 'package:app_sucre/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ApiServicesProvider(),
          lazy: false,
        )
      ],
      child: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Sucre',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => const LoginScreen(),
        'home': (BuildContext context) => const HomeScreen(),
        'register': (BuildContext context) => const RegisterScreen(),
        'incidents': (BuildContext context) => const IncidentsScreen(),
        'citizenreport': (BuildContext context) => const CitizenReportScreen(),
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
