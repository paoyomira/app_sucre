// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/widgets/widgets.dart';

class IncidentsScreen extends StatelessWidget {
  static const String routeName = 'incidents';

  const IncidentsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Incidencias'),
        ),
        drawer: const MenuWidget(),
        body: Container(
            color: const Color(0xffF8FAFB),
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            child: ListView(
              children: [
                _searchBar(),
                Column(
                  children: [
                    incidentsCards(),
                    const SizedBox(height: 20.0),
                    incidentsCards(),
                    const SizedBox(height: 20.0),
                    incidentsCards(),
                  ],
                ),
              ],
            )));
  }

  Widget _searchBar() {
    return Column(
      children: <Widget>[
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
                  icon: const Icon(Icons.search_rounded),
                  onPressed: () {},
                ),
                const Expanded(
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
                    icon: const Icon(Icons.clear_rounded),
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
              title: Text(
                'Incidencia # 1',
                style: TextStyle(height: 2.0),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam accumsan eros non elit lobortis, eu aliquam arcu euismod. Morbi turpis lectus, sollicitudin eget vestibulum in, porta ut nulla. Aliquam sit amet porttitor odio. ',
                style: TextStyle(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Reportar'),
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
