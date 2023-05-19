// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCompany _$AddCompanyFromJson(Map<String, dynamic> json) => AddCompany(
      company_name: json['company_name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$AddCompanyToJson(AddCompany instance) =>
    <String, dynamic>{
      'company_name': instance.company_name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
    };
