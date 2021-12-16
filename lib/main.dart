import 'package:app_sucre/providers/app_providers/notification_provider.dart';
import 'package:app_sucre/providers/providers.dart';
import 'package:app_sucre/screens/screens.dart';
import 'package:app_sucre/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ApiService()),
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => CitizerReportFormProvider())
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
      initialRoute: 'checkin',
      routes: {
        'checkin': (BuildContext context) => const CheckAuthScreen(),
        'login': (BuildContext context) => const LoginScreen(),
        'home': (BuildContext context) => const HomeScreen(),
        'register': (BuildContext context) => const RegisterScreen(),
        'incidents': (BuildContext context) => const IncidentsScreen(),
        'citizenreport': (BuildContext context) => const CitizenReportScreen(),
        'initial': (BuildContext context) => const InitialScreen(),
        'latestreports': (BuildContext context) => const LatestReportsScreen(),
      },
      scaffoldMessengerKey: NotificationProvider.messengerKey,
      theme: ThemeData(fontFamily: 'Raleway'),
      // theme: ThemeData.light().copyWith(
      //   scaffoldBackgroundColor: Colors.white,
      // ),
    );
  }
}
