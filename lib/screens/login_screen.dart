// ignore_for_file: prefer_const_constructors

import 'package:app_sucre/screens/home_screen.dart';
import 'package:app_sucre/screens/initial_screen.dart';
import 'package:app_sucre/screens/login_screen.dart';
import 'package:app_sucre/ui/input_decorations.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
          _LoginForm(),
          SizedBox(height: 50),
          _textRow(),
        ],
      ),
    ));
  }
}

Widget _buttonLogin(BuildContext context) {
  return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
            left: 100.0, top: 15.0, right: 100.0, bottom: 15.0),
        child: Text(
          'Ingresar',
          style: TextStyle(
              color: Color(0xff00D4CE), fontSize: 25.0, fontFamily: "Raleway"),
        ),
      ),
      style: TextButton.styleFrom(
          elevation: 10.0,
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )));
}

Widget _textRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
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

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'Correo',
                labelText: 'Correo',
                prefixIcon: Icons.person_rounded,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                prefixIcon: Icons.lock_rounded,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            _buttonLogin(context),
          ],
        ),
      ),
    );
  }
}
