import 'package:flutter/material.dart';
import 'package:app_sucre/screens/screens.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu-img.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
              leading: Icon(Icons.home_rounded, color: Colors.grey),
              title: Text('Inicio'),
              onTap: () => Navigator.pushReplacementNamed(
                  context, HomeScreen.routeName)),
          // ListTile(
          //   leading: Icon(Icons.description_rounded, color: Colors.grey),
          //   title: Text('Trámites'),
          //   onTap: () {},
          // ),
          // ListTile(
          //   leading: Icon(Icons.pin_drop_rounded, color: Colors.grey),
          //   title: Text('Turismo'),
          //   onTap: () {},
          // ),
          ListTile(
              leading: Icon(Icons.manage_search_rounded, color: Colors.grey),
              title: Text('Incidencias'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.pushReplacementNamed(
                    context, IncidentsScreen.routeName);
              }),
          ListTile(
            leading: Icon(Icons.logout_rounded, color: Colors.grey),
            title: Text('Salir'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
