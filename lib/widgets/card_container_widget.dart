import 'package:flutter/material.dart';

class CardContainerWidget extends StatelessWidget {
  final Widget child;

  const CardContainerWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: createCardShape(),
        child: child,
      ),
    );
  }

  BoxDecoration createCardShape() => BoxDecoration(
        color: const Color.fromRGBO(248, 250, 251, 1.0),
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
