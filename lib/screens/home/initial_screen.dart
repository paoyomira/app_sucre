// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/widgets/widgets.dart';

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
        children: const [
          SizedBox(height: 10.0),
          Image(
            image: AssetImage('assets/img/initial_01.png'),
          ),
          SizedBox(height: 70.0),
          LoginButtonWidget(),
          SizedBox(height: 30.0),
          // RegisterButtonWidget(),
        ],
      ),
    ));
  }
}

// ignore_for_file: prefer_const_constructors