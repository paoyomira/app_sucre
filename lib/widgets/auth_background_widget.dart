import 'package:flutter/material.dart';

class AuthBackgroundWidget extends StatelessWidget {
  final Widget child;

  const AuthBackgroundWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          const HeaderIcon(),
          child,
        ],
      ),
    );
  }
}

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 30),
          child:
              Icon(Icons.arrow_back, color: Colors.grey.shade700, size: 100)),
    );
  }
}
