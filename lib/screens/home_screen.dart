// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/screens/screens.dart';
import 'package:app_sucre/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      drawer: MenuWidget(),
      body: GridView.count(
        primary: false,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: <Widget>[
         
              _cardInicio2(),
             _cardInicio2(),
               _cardInicio2(),
             _cardInicio2(),
        
        ],
      ),
    );
  }

  Widget _cardInicio2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 150.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Incidencias'))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, -10.0)),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
