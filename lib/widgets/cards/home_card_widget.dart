import 'package:flutter/material.dart';
import 'package:app_sucre/services/services.dart';

import 'package:provider/provider.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, 'incidents');
      },
      child: Container(
        margin: const EdgeInsets.all(15),
        height: 180,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.pie_chart_outline_rounded,
                size: 35,
              ),
              radius: 30,
            ),
            SizedBox(height: 10),
            Text('Incidencias',
                style: TextStyle(color: Colors.black, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
