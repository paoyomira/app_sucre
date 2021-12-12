// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:app_sucre/screens/home/home_screen.dart';
import 'package:app_sucre/screens/home/initial_screen.dart';
import 'package:app_sucre/widgets/widgets.dart';

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
          _textRow(),
        ],
      ),
    ));
  }
}

Widget _textRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const [
      Text('¿No tienes una cuenta?',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )),
      Text('Crear Cuenta',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff00D4CE))),
    ],
  );
}
