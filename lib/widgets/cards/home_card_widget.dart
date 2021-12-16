import 'package:flutter/material.dart';
import 'package:app_sucre/services/services.dart';
import 'package:provider/provider.dart';

class HomeCardWidget extends StatelessWidget {
  final Widget url;
  final String textButton;
  final IconData icon;
  const HomeCardWidget(
      {Key? key,
      required this.url,
      required this.textButton,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => url),
          );
        },
        child: Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(211, 251, 237, 0.98),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 30),
              CircleAvatar(
                child: Icon(
                  icon,
                  size: 35,
                ),
                radius: 30,
              ),
              const SizedBox(height: 30),
              Text(textButton,
                  style: const TextStyle(color: Colors.black, fontSize: 18)),
              const SizedBox(height: 30),
            ],
          ),
        ));
  }
}
