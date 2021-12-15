// To parse this JSON data, do
//
//     final incidentsResponse = incidentsResponseFromMap(jsonString);

import 'dart:convert';

class IncidentsResponse {
  IncidentsResponse({
    required this.id,
    required this.tipoincidencia,
    required this.nombre,
    required this.tipoincidenciaid,
  });

  int id;
  String tipoincidencia;
  String nombre;
  int tipoincidenciaid;

  factory IncidentsResponse.fromJson(String str) =>
      IncidentsResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IncidentsResponse.fromMap(Map<String, dynamic> json) =>
      IncidentsResponse(
        id: json["id"],
        tipoincidencia: json["tipoincidencia"],
        nombre: json["nombre"],
        tipoincidenciaid: json["tipoincidenciaid"],
      );

  factory IncidentsResponse.fromJsonList(Map<String, dynamic> json) {
    return IncidentsResponse(
      id: json["id"],
      tipoincidencia: json["tipoincidencia"],
      nombre: json["nombre"],
      tipoincidenciaid: json["tipoincidenciaid"],
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "tipoincidencia": tipoincidencia,
        "nombre": nombre,
        "tipoincidenciaid": tipoincidenciaid,
      };
}
