// Importaciones Flutter
import 'package:app_sucre/screens/screens.dart';
import 'package:flutter/material.dart';

// Importaciones Aplicación

class EvidencePhotosButtonWidget extends StatelessWidget {
  const EvidencePhotosButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const LatestReportsScreen()),
          );
        },
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Reportar Incidencia',
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
        style: TextButton.styleFrom(
            elevation: 10.0,
            shadowColor: Colors.black,
            backgroundColor: const Color(0xff00D4CE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )));
  }
}
