import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;

  const CardContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: createCardShape(),
        child: this.child,
      ),
    );
  }

  BoxDecoration createCardShape() => BoxDecoration(
          color: Color.fromRGBO(248, 250, 251, 1.0),
          borderRadius: BorderRadius.circular(25),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 15,
          //     offset: Offset(10, 0),
          //   )
          // ]
          );
}
