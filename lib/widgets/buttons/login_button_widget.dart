// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/screens/screens.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        },
        child: const Padding(
          padding: EdgeInsets.only(
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
            backgroundColor: const Color(0xff00D4CE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )));
  }
}
