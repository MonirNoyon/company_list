// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyResponseModel _$CompanyResponseModelFromJson(
        Map<String, dynamic> json) =>
    CompanyResponseModel(
      data:
          (json['data'] as List<dynamic>?)?.map(CompanyModel.fromJson).toList(),
    );

Map<String, dynamic> _$CompanyResponseModelToJson(
        CompanyResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) => CompanyModel(
      id: json['id'] as int?,
      company_name: json['company_name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$CompanyModelToJson(CompanyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_name': instance.company_name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
    };
