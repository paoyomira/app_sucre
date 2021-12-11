import 'package:flutter/material.dart';
import 'package:app_sucre/screens/screens.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu-img.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
              leading: const Icon(Icons.home_rounded, color: Colors.grey),
              title: const Text('Inicio'),
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
              leading:
                  const Icon(Icons.manage_search_rounded, color: Colors.grey),
              title: const Text('Incidencias'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.pushReplacementNamed(
                    context, IncidentsScreen.routeName);
              }),
          ListTile(
            leading: const Icon(Icons.logout_rounded, color: Colors.grey),
            title: const Text('Salir'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
