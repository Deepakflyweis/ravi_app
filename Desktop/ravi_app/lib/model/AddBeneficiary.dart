

// To parse this JSON data, do
//
//     final addBeneficiary = addBeneficiaryFromJson(jsonString);

import 'dart:convert';

AddBeneficiary addBeneficiaryFromJson(String str) => AddBeneficiary.fromJson(json.decode(str));

String addBeneficiaryToJson(AddBeneficiary data) => json.encode(data.toJson());

class AddBeneficiary {
  AddBeneficiary({
    this.selectBank,
    this.accountType,
    this.accountHolderName,
    this.accountNumber,
    this.ifscCode,
    this.branchAddress,
    this.state,
    this.district,
  });

  String? selectBank;
  String? accountType;
  String? accountHolderName;
  String? accountNumber;
  String? ifscCode;
  String? branchAddress;
  String? state;
  String? district;

  factory AddBeneficiary.fromJson(Map<String, dynamic> json) => AddBeneficiary(
    selectBank: json["selectBank"],
    accountType: json["accountType"],
    accountHolderName: json["accountHolderName"],
    accountNumber: json["accountNumber"],
    ifscCode: json["IFSCCode"],
    branchAddress: json["branchAddress"],
    state: json["state"],
    district: json["district"],
  );

  Map<String, dynamic> toJson() => {
    "selectBank": selectBank,
    "accountType": accountType,
    "accountHolderName": accountHolderName,
    "accountNumber": accountNumber,
    "IFSCCode": ifscCode,
    "branchAddress": branchAddress,
    "state": state,
    "district": district,
  };
}
