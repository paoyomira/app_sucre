// Importaciones Flutter
import 'package:flutter/material.dart';
// Importaciones Aplicación
import 'package:app_sucre/ui/input_decorations.dart';
import 'package:app_sucre/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  static final String routeName = 'register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackgroundWidget(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 250),
            CardContainerWidget(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text('Registro',
                      style: Theme.of(context).textTheme.headline4),
                  SizedBox(height: 30),
                  _LoginForm(),
                ],
              ),
            ),
            SizedBox(height: 100),
            Text('¿No tienes una cuenta?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 50),
          ],
        ),
      )),
    );
  }
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
                hintText: 'nombre usuario',
                labelText: 'Usuario',
                prefixIcon: Icons.local_activity,
              ),
            ),
            SizedBox(
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
            SizedBox(
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
            SizedBox(
              height: 30,
            ),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.cyan.shade300, width: 2)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                  child: Text(
                    'Ingresar',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 212, 206, 1.0),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
