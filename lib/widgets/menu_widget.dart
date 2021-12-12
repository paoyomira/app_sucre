import 'package:app_sucre/services/services.dart';
import 'package:flutter/material.dart';
import 'package:app_sucre/screens/screens.dart';
import 'package:provider/provider.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/menu-img.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
              leading: const Icon(Icons.home_rounded, color: Colors.grey),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'home');
              }),
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
          const SizedBox(
            height: 400.0,
          ),
          ListTile(
            leading: const Icon(Icons.logout_rounded, color: Colors.grey),
            title: const Text('Cerrar Sesión'),
            onTap: () {
              authService.logout();
              Navigator.pushReplacementNamed(context, 'login');
            },
          ),
        ],
      ),
    );
  }
}
