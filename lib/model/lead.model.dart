// To parse this JSON data, do
//
//     final leadModel = leadModelFromJson(jsonString);

import 'dart:convert';

LeadModel leadModelFromJson(String str) => LeadModel.fromJson(json.decode(str));

String leadModelToJson(LeadModel data) => json.encode(data.toJson());

class LeadModel {
  final bool? success;
  final String? message;
  final List<Datum>? data;

  LeadModel({
    this.success,
    this.message,
    this.data,
  });

  factory LeadModel.fromJson(Map<String, dynamic> json) => LeadModel(
    success: json["success"],
    message: json["message"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? date;

  Datum({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.date,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
    date: json["date"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "phone": phone,
    "date": date,
  };
}
