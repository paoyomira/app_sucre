import 'package:app_sucre/screens/incidents/incidents_screen.dart';
import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => IncidentsScreen()));
        },
        child: Container(
          margin: const EdgeInsets.all(15),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(211, 251, 237, 0.98),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              SizedBox(height: 30),
              CircleAvatar(
                child: Icon(
                  Icons.dashboard_rounded,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 30),
              Text('Hacer un Reporte',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              SizedBox(height: 30),
            ],
          ),
        ));
  }
}
