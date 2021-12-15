// To parse this JSON data, do
//
//     final reportResponse = reportResponseFromMap(jsonString);

import 'dart:convert';

class ReportResponse {
  ReportResponse({
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

  factory ReportResponse.fromJson(String str) =>
      ReportResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ReportResponse.fromMap(Map<String, dynamic> json) => ReportResponse(
        id: json["id"],
        incidenciaid: json["incidenciaid"],
        descripcion: json["descripcion"],
        fechareporte: DateTime.parse(json["fechareporte"]),
        usuarioreporteid: json["usuarioreporteid"],
        latitud: json["latitud"],
        longitud: json["longitud"],
        estadoreporte: json["estadoreporte"],
      );

  factory ReportResponse.fromJsonList(Map<String, dynamic> json) {
    return ReportResponse(
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
