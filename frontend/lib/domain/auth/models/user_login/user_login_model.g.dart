// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLoginModel _$$_UserLoginModelFromJson(Map<String, dynamic> json) =>
    _$_UserLoginModel(
      email: EmailAddress.fromJson(json['email'] as Map<String, dynamic>),
      password: Password.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserLoginModelToJson(_$_UserLoginModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
