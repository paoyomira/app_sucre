import 'package:app_sucre/ui/input_decorations.dart';
import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextInputType inputType;
  final IconData? iconData;
  const TextInputWidget(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.inputType,
      this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      keyboardType: inputType,
      decoration: InputDecorations.authInputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: iconData,
      ),
    );
  }
}
