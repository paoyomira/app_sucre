// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/ui/input_decorations.dart';
import 'package:app_sucre/widgets/widgets.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
              hintText: 'nombre usuario',
              labelText: 'Usuario',
              prefixIcon: Icons.local_activity,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
              hintText: 'admin@admin.com',
              labelText: 'Correo',
              prefixIcon: Icons.local_activity,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
              hintText: '*******',
              labelText: 'Password',
              prefixIcon: Icons.lock_open,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const UserRegisterButton(),
        ],
      ),
    );
  }
}
