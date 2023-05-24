// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organizer_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrganizerLoginModel _$$_OrganizerLoginModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrganizerLoginModel(
      email: EmailAddress.fromJson(json['email'] as Map<String, dynamic>),
      password: Password.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrganizerLoginModelToJson(
        _$_OrganizerLoginModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
