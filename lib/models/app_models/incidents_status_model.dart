// To parse this JSON data, do
//
//     final incidentsStatusReport = incidentsStatusReportFromMap(jsonString);

import 'dart:convert';

class IncidentsStatusReport {
  IncidentsStatusReport({
    required this.id,
    required this.incidenciaid,
    required this.descripcion,
    required this.fechareporte,
    required this.usuarioreporteid,
    required this.latitud,
    required this.longitud,
    required this.estadoreporte,
  });

  int id;
  int incidenciaid;
  String descripcion;
  DateTime fechareporte;
  int usuarioreporteid;
  String latitud;
  String longitud;
  String estadoreporte;

  factory IncidentsStatusReport.fromJson(String str) =>
      IncidentsStatusReport.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IncidentsStatusReport.fromMap(Map<String, dynamic> json) =>
      IncidentsStatusReport(
        id: json["id"],
        incidenciaid: json["incidenciaid"],
        descripcion: json["descripcion"],
        fechareporte: DateTime.parse(json["fechareporte"]),
        usuarioreporteid: json["usuarioreporteid"],
        latitud: json["latitud"],
        longitud: json["longitud"],
        estadoreporte: json["estadoreporte"],
      );

  factory IncidentsStatusReport.fromJsonList(Map<String, dynamic> json) {
    return IncidentsStatusReport(
      id: json["id"],
      incidenciaid: json["incidenciaid"],
      descripcion: json["descripcion"],
      fechareporte: DateTime.parse(json["fechareporte"]),
      usuarioreporteid: json["usuarioreporteid"],
      latitud: json["latitud"],
      longitud: json["longitud"],
      estadoreporte: json["estadoreporte"],
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "incidenciaid": incidenciaid,
        "descripcion": descripcion,
        "fechareporte": fechareporte.toIso8601String(),
        "usuarioreporteid": usuarioreporteid,
        "latitud": latitud,
        "longitud": longitud,
        "estadoreporte": estadoreporte,
      };
}
