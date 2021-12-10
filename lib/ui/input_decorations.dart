// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      {String? hintText, String? labelText, IconData? prefixIcon}) {
    return InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff00D4CE), width: 2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff24d7ca), width: 2),
        ),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.grey,
        ),
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: Color(0xffd7e5da))
            : null);
  }
}
