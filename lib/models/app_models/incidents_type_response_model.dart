// To parse this JSON data, do
//
//     final incidentsTypeResponse = incidentsTypeResponseFromMap(jsonString);

import 'dart:convert';

class IncidentsTypeResponse {
  IncidentsTypeResponse({
    required this.id,
    required this.name,
    required this.descripcion,
  });

  int id;
  String name;
  String descripcion;

  factory IncidentsTypeResponse.fromJson(String str) =>
      IncidentsTypeResponse.fromMap(json.decode(str));

  factory IncidentsTypeResponse.fromJsonList(Map<String, dynamic> json) {
    return IncidentsTypeResponse(
      id: json["id"],
      name: json["_name"],
      descripcion: json["descripcion"],
    );
  }

  String toJson() => json.encode(toMap());

  factory IncidentsTypeResponse.fromMap(Map<String, dynamic> json) =>
      IncidentsTypeResponse(
        id: json["id"],
        name: json["_name"],
        descripcion: json["descripcion"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "_name": name,
        "descripcion": descripcion,
      };
}
