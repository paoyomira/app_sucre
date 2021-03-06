import 'package:flutter/material.dart';

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
                  color: Color(0xffd7e5da),
                ),
                radius: 30,
                backgroundColor: Color(0xff43c39d),
              ),
              const SizedBox(height: 25),
              Text(textButton,
                  style: const TextStyle(color: Colors.black, fontSize: 15)),
              const SizedBox(height: 15),
            ],
          ),
        ));
  }
}
