import 'package:flutter/material.dart';

class AuthBackgroundWidget extends StatelessWidget {

final Widget child;

  const AuthBackgroundWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          HeaderIcon(),
          this.child,
        ],
      ),
    );
  }
}

class HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 30),
          child: Icon(Icons.arrow_back,
              color: Colors.grey.shade700,
              size: 100)),
    );
  }
}
