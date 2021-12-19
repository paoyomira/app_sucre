// To parse this JSON data, do
//
//     final incidentsReport = incidentsReportFromMap(jsonString);

import 'dart:convert';

import 'package:app_sucre/providers/providers.dart';

class IncidentsReport {
  IncidentsReport({
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

  factory IncidentsReport.fromJson(String str) =>
      IncidentsReport.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IncidentsReport.fromMap(Map<String, dynamic> json) => IncidentsReport(
        id: json["id"],
        incidenciaid: json["incidenciaid"],
        descripcion: json["descripcion"],
        fechareporte: DateTime.parse(json["fechareporte"]),
        usuarioreporteid: json["usuarioreporteid"],
        latitud: json["latitud"],
        longitud: json["longitud"],
        estadoreporte: json["estadoreporte"],
      );

  factory IncidentsReport.fromReportForm(CitizerReportFormProvider form) =>
      IncidentsReport(
        id: 0,
        incidenciaid: 0,
        descripcion: form.description,
        fechareporte: DateTime.now(),
        usuarioreporteid: 0,
        latitud: '0',
        longitud: '0',
        estadoreporte: '',
      );

  factory IncidentsReport.fromJsonList(Map<String, dynamic> json) {
    return IncidentsReport(
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
