import 'package:app_sucre/providers/providers.dart';
import 'package:app_sucre/services/app_services/authapi_service.dart';
import 'package:app_sucre/ui/input_decorations.dart';
import 'package:flutter/material.dart';
import 'package:app_sucre/widgets/widgets.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackgroundWidget(
            child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 250),
          CardContainerWidget(
              child: Column(
            children: [
              const SizedBox(height: 10),
              Text('Ingresar', style: Theme.of(context).textTheme.headline4),
              const SizedBox(height: 30),
              ChangeNotifierProvider(
                  create: (_) => LoginFormProvider(), child: _LoginForm())
            ],
          )),
          const SizedBox(height: 50),
          const SizedBox(height: 50),
        ],
      ),
    )));
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);

    return Form(
      key: loginForm.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: 'Número de cédula',
                labelText: 'Cédula del Ciudadano',
                prefixIcon: Icons.account_circle_rounded),
            onChanged: (value) => loginForm.email = value,
            validator: (value) {
              String pattern = r'^[0-9]{10,10}$';
              RegExp regExp = RegExp(pattern);

              return regExp.hasMatch(value ?? '')
                  ? null
                  : 'La cédula debe tener 10 dígitos';
            },
          ),
          const SizedBox(height: 30),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: '*****',
                labelText: 'Contraseña',
                prefixIcon: Icons.lock_outline),
            onChanged: (value) => loginForm.password = value,
            // validator: (value) {
            //   return (value != null && value.length >= 3)
            //       ? null
            //       : 'La contraseña debe de ser de 6 caracteres';
            // },
          ),
          const SizedBox(height: 30),
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  child: Text(
                    loginForm.isLoading ? 'Espere' : 'Ingresar',
                    style: const TextStyle(color: Colors.white),
                  )),
              onPressed: loginForm.isLoading
                  ? null
                  : () async {
                      FocusScope.of(context).unfocus();
                      final authService =
                          Provider.of<AuthService>(context, listen: false);

                      if (!loginForm.isValidForm()) return;

                      loginForm.isLoading = true;

                      // TODO: validar si el login es correcto
                      final String? errorMessage = await authService.loginUser(
                          loginForm.email, loginForm.password);

                      if (errorMessage == null) {
                        Navigator.pushReplacementNamed(context, 'home');
                      } else {
                        // TODO: mostrar error en pantalla

                        // NotificationProvider.showSnackbar(errorMessage);
                        loginForm.isLoading = false;
                      }
                    })
        ],
      ),
    );
  }
}

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       color: Color(0xffF8FAFB),
//       padding: EdgeInsets.all(30.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ListTile(
//             leading: Icon(
//               Icons.arrow_back_rounded,
//               size: 70.0,
//             ),
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => InitialScreen()));
//             },
//           ),
//           SizedBox(height: 50.0),
//           Text('Bienvenid@', style: Theme.of(context).textTheme.headline4),
//           SizedBox(height: 10.0),
//           Text('Inicia sesión para continuar',
//               style: Theme.of(context).textTheme.headline6),
//           SizedBox(height: 100),
//           LoginForm(),
//           SizedBox(height: 50),
//           _textRow(),
//         ],
//       ),
//     ));
//   }
// }

// Widget _textRow() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: const [
//       Text('¿No tienes una cuenta?',
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           )),
//       Text('Crear Cuenta',
//           style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: Color(0xff00D4CE))),
//     ],
//   );
// }
