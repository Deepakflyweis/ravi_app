

// To parse this JSON data, do
//
//     final modeRegister = modeRegisterFromJson(jsonString);

import 'dart:convert';

ModeRegister modeRegisterFromJson(String str) => ModeRegister.fromJson(json.decode(str));

String modeRegisterToJson(ModeRegister data) => json.encode(data.toJson());

class ModeRegister {
  ModeRegister({
    this.password,
    this.prefixName,
    this.fname,
    this.lname,
    this.thaiAddress,
    this.indianAddress,
    this.thaiNumber,
    this.indianNumber,
  });

  String? password;
  String? prefixName;
  String? fname;
  String? lname;
  String? thaiAddress;
  String? indianAddress;
  String? thaiNumber;
  String? indianNumber;

  factory ModeRegister.fromJson(Map<String, dynamic> json) => ModeRegister(
    password: json["password"],
    prefixName: json["prefixName"],
    fname: json["Fname"],
    lname: json["Lname"],
    thaiAddress: json["ThaiAddress"],
    indianAddress: json["IndianAddress"],
    thaiNumber: json["ThaiNumber"],
    indianNumber: json["IndianNumber"],
  );

  Map<String, dynamic> toJson() => {
    "password": password,
    "prefixName": prefixName,
    "Fname": fname,
    "Lname": lname,
    "ThaiAddress": thaiAddress,
    "IndianAddress": indianAddress,
    "ThaiNumber": thaiNumber,
    "IndianNumber": indianNumber,
  };
}
