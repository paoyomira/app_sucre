import 'package:app_sucre/screens/home/home_screen.dart';
import 'package:app_sucre/ui/styles/customized_styles.dart';
import 'package:flutter/material.dart';
import 'package:app_sucre/widgets/widgets.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const TextInputWidget(
              hintText: "Usuario",
              labelText: "Usuario",
              inputType: TextInputType.emailAddress,
              iconData: Icons.lock_rounded),
          const PasswordInputWidget(
              hintText: 'Contraseña', labelText: 'Contraseña'),
          const SizedBox(height: 30),
          const SizedBox(height: 60),
          _buttonLogin(context),
        ],
      ),
    );
  }

  Widget _buttonLogin(BuildContext context) {
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
