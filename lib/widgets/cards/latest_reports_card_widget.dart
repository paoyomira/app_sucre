// Importaciones Flutter
import 'package:flutter/material.dart';

// Importaciones Aplicación
import 'package:app_sucre/models/models.dart';

class LatestReportsCardWidget extends StatelessWidget {
  final ReportResponse report;

  const LatestReportsCardWidget({Key? key, required this.report})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(report.incidenciaid.toString()),
              subtitle: Text(report.descripcion),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextButton(
                    child: Text(
                      report.fechareporte.toString(),
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                      color: Color(0xff43c39d),
                                    ))),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff43c39d))),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: Text(
                      report.estadoreporte,
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                      color: Color(0xff24d7ca),
                                    ))),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff24d7ca))),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
