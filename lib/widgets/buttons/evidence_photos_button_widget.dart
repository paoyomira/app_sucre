// Importaciones Flutter
import 'package:app_sucre/screens/screens.dart';
import 'package:flutter/material.dart';

// Importaciones Aplicación

class EvidencePhotosButtonWidget extends StatelessWidget {
  const EvidencePhotosButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Color(0xff00D4CE),
          minimumSize: Size.fromHeight(40),
          elevation: 10.0,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )
          // fromHeight use double.infinity as width and 40 is the height
          ),
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const LatestReportsScreen()),
        // );
      },
      child: const Padding(
        padding: EdgeInsets.all(13.0),
        child: Text(
          'Tomar Fotografía',
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
      // style: ButtonStyle.styleFrom(
      //     elevation: 10.0,
      //     shadowColor: Colors.black,
      //     backgroundColor: const Color(0xff00D4CE),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(10.0),
      //     ))
    );
  }
}
