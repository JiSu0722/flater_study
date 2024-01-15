// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginImpl _$$LoginImplFromJson(Map<String, dynamic> json) => _$LoginImpl(
      user_name: json['user_name'] as String,
      image_url: json['image_url'] as String,
      company_name: json['company_name'] as String,
      authority: json['authority'] as String,
      company_code: json['company_code'] as String,
      id: json['id'] as String,
      token: json['token'] as String,
      authoritiesList: json['authoritiesList'] as List<dynamic>?,
    );

Map<String, dynamic> _$$LoginImplToJson(_$LoginImpl instance) =>
    <String, dynamic>{
      'user_name': instance.user_name,
      'image_url': instance.image_url,
      'company_name': instance.company_name,
      'authority': instance.authority,
      'company_code': instance.company_code,
      'id': instance.id,
      'token': instance.token,
      'authoritiesList': instance.authoritiesList,
    };
