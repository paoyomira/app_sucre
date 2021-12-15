// To parse this JSON data, do
//
//     final searchIncidents = searchIncidentsFromMap(jsonString);

import 'dart:convert';

class SearchIncidentsTypeResponse {
  SearchIncidentsTypeResponse({
    required this.id,
    required this.tipoincidencia,
    required this.nombre,
    required this.tipoincidenciaid,
  });

  int id;
  String tipoincidencia;
  String nombre;
  int tipoincidenciaid;

  factory SearchIncidentsTypeResponse.fromJson(String str) =>
      SearchIncidentsTypeResponse.fromMap(json.decode(str));

  factory SearchIncidentsTypeResponse.fromJsonList(Map<String, dynamic> json) {
    return SearchIncidentsTypeResponse(
      id: json["id"],
      tipoincidencia: json["tipoincidencia"],
      nombre: json["nombre"],
      tipoincidenciaid: json["tipoincidenciaid"],
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchIncidentsTypeResponse.fromMap(Map<String, dynamic> json) =>
      SearchIncidentsTypeResponse(
        id: json["id"],
        tipoincidencia: json["tipoincidencia"],
        nombre: json["nombre"],
        tipoincidenciaid: json["tipoincidenciaid"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "tipoincidencia": tipoincidencia,
        "nombre": nombre,
        "tipoincidenciaid": tipoincidenciaid,
      };
}
