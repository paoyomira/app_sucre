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
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Color(0xFF43C29D)),
            accountEmail: Text(
              'admin@admin.com',
              style: TextStyle(color: Colors.black87),
            ),
            accountName: Text(
              'Administrador',
              style: TextStyle(color: Colors.black87),
            ),
            currentAccountPicture: CircleAvatar(
              radius: 60.0,
              backgroundColor: Color(0xFF43C29D),
              child: Image.asset(
                'assets/img/user.png',
              ), //For Image Asset
            ),
          ),
          ListTile(
              leading: const Icon(Icons.home_outlined, color: Colors.grey),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'home');
              }),
          ListTile(
              leading:
                  const Icon(Icons.assignment_outlined, color: Colors.grey),
              title: const Text('Trámites'),
              onTap: () {}),
          ListTile(
              leading:
                  const Icon(Icons.manage_search_outlined, color: Colors.grey),
              title: const Text('Incidencias'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.pushReplacementNamed(
                    context, IncidentsScreen.routeName);
              }),
          ListTile(
              leading: const Icon(Icons.map, color: Colors.grey),
              title: const Text('Turismo'),
              onTap: () {}),
          const SizedBox(
            height: 150,
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined, color: Colors.grey),
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
