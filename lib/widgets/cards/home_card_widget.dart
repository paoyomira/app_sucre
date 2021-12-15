import 'package:flutter/material.dart';

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
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(211, 251, 237, 0.98),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CircleAvatar(
                child: Icon(
                  Icons.dashboard_rounded,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text('Hacer un Reporte',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ],
          ),
        ));
  }
}
