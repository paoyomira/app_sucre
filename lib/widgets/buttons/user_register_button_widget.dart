// Importaciones Flutter
import 'package:flutter/material.dart';

class UserRegisterButton extends StatelessWidget {
  const UserRegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.cyan.shade300, width: 2)),
        disabledColor: Colors.grey,
        elevation: 0,
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
          child: const Text(
            'Ingresar',
            style: TextStyle(
                color: Color.fromRGBO(0, 212, 206, 1.0),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
        onPressed: () {});
  }
}
