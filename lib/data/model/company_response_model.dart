import 'package:json_annotation/json_annotation.dart';

part 'company_response_model.g.dart';

@JsonSerializable()
class CompanyResponseModel {
  List<CompanyModel>? data;

  CompanyResponseModel({this.data});

  factory CompanyResponseModel.fromJson(json) =>
      _$CompanyResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyResponseModelToJson(this);
}

@JsonSerializable()
class CompanyModel {
  int? id;
  String? company_name;
  String? email;
  String? password;
  String? phone;

  CompanyModel(
      {this.id, this.company_name, this.email, this.password, this.phone});

  factory CompanyModel.fromJson(json) => _$CompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
}
