// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCreateModel _$$_UserCreateModelFromJson(Map<String, dynamic> json) =>
    _$_UserCreateModel(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_UserCreateModelToJson(_$_UserCreateModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
    };
