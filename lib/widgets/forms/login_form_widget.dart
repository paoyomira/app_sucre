// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/widgets/widgets.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: const [
          TextInputWidget(
              hintText: "Usuario",
              labelText: "Usuario",
              inputType: TextInputType.emailAddress,
              iconData: Icons.lock_rounded),
          PasswordInputWidget(hintText: 'Contraseña', labelText: 'Contraseña'),
          SizedBox(height: 30),
          SizedBox(height: 60),
          UserLoginButton(),
        ],
      ),
    );
  }
}
