
import 'package:json_annotation/json_annotation.dart';
part 'add_company_model.g.dart';

@JsonSerializable()
class AddCompany{
  String? company_name;
  String? email;
  String? password;
  String? phone;


  AddCompany({this.company_name, this.email, this.password, this.phone});

  factory AddCompany.fromJson(json) => _$AddCompanyFromJson(json);

  Map<String, dynamic> toJson() => _$AddCompanyToJson(this);
}