// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/screens/screens.dart';
import 'package:app_sucre/widgets/widgets.dart';

class IncidentsScreen extends StatelessWidget {
  static final String routeName = 'incidents';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Incidencias'),
        ),
        drawer: MenuWidget(),
        body: Column(
          children: [
            Container(padding: EdgeInsets.all(10.0), child: _searchBar()),
            Container(padding: EdgeInsets.all(10.0), child: incidentsCards()),
            Container(padding: EdgeInsets.all(10.0), child: incidentsCards()),
            Container(padding: EdgeInsets.all(10.0), child: incidentsCards()),
          ],
        ));
  }

  Widget _searchBar() {
    return Column(
      children: <Widget>[
        // Container(
        //   color: Colors.whi,
        // ),
        Positioned(
          top: 10,
          right: 15,
          left: 15,
          child: Container(
            color: Colors.grey.shade50,
            child: Row(
              children: <Widget>[
                IconButton(
                  splashColor: Colors.grey,
                  icon: Icon(Icons.manage_search_rounded),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        hintText: 'Búsqueda'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    splashColor: Colors.grey,
                    icon: Icon(Icons.clear_rounded),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget incidentsCards() {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
