import 'package:flutter/material.dart';

class NotificationProvider {
  static GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static showSnackbar(String message) {
    final snackBar = SnackBar(
      content: Text(message,
          style: const TextStyle(color: Colors.white, fontSize: 15)),
    );

    messengerKey.currentState!.showSnackBar(snackBar);
  }
}
