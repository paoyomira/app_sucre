import 'package:flutter/material.dart';

ButtonStyle customButtonStyle() {
  return ButtonStyle(
      elevation: MaterialStateProperty.all(10.0),
      shadowColor: MaterialStateProperty.all(Colors.black),
      backgroundColor: MaterialStateProperty.all(Colors.white),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      )));
}
