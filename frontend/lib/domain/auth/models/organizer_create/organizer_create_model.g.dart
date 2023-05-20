// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organizer_create_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrganizerCreateModel _$$_OrganizerCreateModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrganizerCreateModel(
      email: json['email'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      organizationName: json['organizationName'] as String,
    );

Map<String, dynamic> _$$_OrganizerCreateModelToJson(
        _$_OrganizerCreateModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'organizationName': instance.organizationName,
    };
