// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/screens/screens.dart';
import 'package:app_sucre/ui/styles/customized_styles.dart';

class UserLoginButton extends StatelessWidget {
  const UserLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        },
        child: const Padding(
          padding: EdgeInsets.only(
              left: 100.0, top: 15.0, right: 100.0, bottom: 15.0),
          child: Text(
            'Ingresar',
            style: TextStyle(color: Color(0xff00D4CE), fontSize: 25.0),
          ),
        ),
        style: customButtonStyle());
  }
}
