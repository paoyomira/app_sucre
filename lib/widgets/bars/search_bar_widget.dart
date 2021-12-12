import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: [],
    );

    //   Column(
    //     children: <Widget>[
    //       Positioned(
    //         top: 10,
    //         right: 15,
    //         left: 15,
    //         child: Container(
    //           color: Colors.grey.shade50,
    //           child: Row(
    //             children: <Widget>[
    //               IconButton(
    //                 splashColor: Colors.grey,
    //                 icon: const Icon(Icons.search_rounded),
    //                 onPressed: () {},
    //               ),
    //               const Expanded(
    //                 child: TextField(
    //                   cursorColor: Colors.black,
    //                   keyboardType: TextInputType.text,
    //                   textInputAction: TextInputAction.go,
    //                   decoration: InputDecoration(
    //                       border: InputBorder.none,
    //                       contentPadding: EdgeInsets.symmetric(horizontal: 15),
    //                       hintText: 'Búsqueda'),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(right: 8.0),
    //                 child: IconButton(
    //                   splashColor: Colors.grey,
    //                   icon: const Icon(Icons.clear_rounded),
    //                   onPressed: () {},
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   );
  }
}
