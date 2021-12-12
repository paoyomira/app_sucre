import 'package:flutter/material.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.only(
              left: 100.0, top: 15.0, right: 100.0, bottom: 15.0),
          child: Text(
            'Crear Cuenta',
            style: TextStyle(
              color: Color(0xff00D4CE),
              fontSize: 25.0,
            ),
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
}
