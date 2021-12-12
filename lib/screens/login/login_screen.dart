// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/widgets/widgets.dart';
import 'package:app_sucre/screens/screens.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xffF8FAFB),
      padding: EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(
              Icons.arrow_back_rounded,
              size: 70.0,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InitialScreen()));
            },
          ),
          SizedBox(height: 50.0),
          Text('Bienvenid@', style: Theme.of(context).textTheme.headline4),
          SizedBox(height: 10.0),
          Text('Inicia sesión para continuar',
              style: Theme.of(context).textTheme.headline6),
          SizedBox(height: 100),
          LoginForm(),
          SizedBox(height: 50),
          CreatAccountWidget(),
        ],
      ),
    ));
  }
}

// ignore_for_file: prefer_const_constructors