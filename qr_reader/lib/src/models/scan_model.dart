import 'dart:convert';
import 'package:meta/meta.dart';

SacanModel sacanModelFromJson(String str) =>
    SacanModel.fromJson(json.decode(str));

String sacanModelToJson(SacanModel data) => json.encode(data.toJson());

class SacanModel {
  SacanModel({
    this.id,
    this.tipo,
    @required this.valor,
  }) {
    if (this.tipo.contains('http')) {
      this.tipo = 'http';
    } else {
      this.tipo = 'geo';
    }
  }

  int id;
  String tipo;
  String valor;

  factory SacanModel.fromJson(Map<String, dynamic> json) => SacanModel(
        id: json["id"],
        tipo: json["tipo"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
      };
}
