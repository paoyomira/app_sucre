// ignore_for_file: prefer_const_constructors

import 'package:app_sucre/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xffF8FAFB),
      padding: EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10.0),
          Image(
            image: AssetImage('assets/img/initial_01.png'),
          ),
          SizedBox(height: 70.0),
          _buttonLogin(context),
          SizedBox(height: 30.0),
          _buttonRegister(),
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
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
            left: 100.0, top: 15.0, right: 100.0, bottom: 15.0),
        child: Text(
          'Iniciar Sesión',
          style: TextStyle(
              color: Colors.white, fontSize: 25.0, fontFamily: "Raleway"),
        ),
      ),
      style: TextButton.styleFrom(
          elevation: 10.0,
          shadowColor: Colors.black,
          backgroundColor: Color(0xff00D4CE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )));
}

Widget _buttonRegister() {
  return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(
            left: 100.0, top: 15.0, right: 100.0, bottom: 15.0),
        child: Text(
          'Crear Cuenta',
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
