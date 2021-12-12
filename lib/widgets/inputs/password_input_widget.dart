import 'package:flutter/material.dart';
import 'package:app_sucre/ui/input_decorations.dart';

class PasswordInputWidget extends StatelessWidget {
  final String hintText;
  final String labelText;

  const PasswordInputWidget(
      {Key? key, required this.hintText, required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecorations.authInputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: Icons.lock_rounded,
      ),
    );
  }
}
