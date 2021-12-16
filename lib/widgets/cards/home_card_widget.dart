import 'package:flutter/material.dart';
import 'package:app_sucre/services/services.dart';
import 'package:provider/provider.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return GestureDetector(
        onTap: () {
          authService;
          Navigator.pushReplacementNamed(context, 'incidents');
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
