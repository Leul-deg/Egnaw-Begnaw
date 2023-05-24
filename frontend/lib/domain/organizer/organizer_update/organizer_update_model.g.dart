// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organizer_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrganizerUpdateModel _$$_OrganizerUpdateModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrganizerUpdateModel(
      name: json['name'] as String,
      email: EmailAddress.fromJson(json['email'] as Map<String, dynamic>),
      password: json['password'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_OrganizerUpdateModelToJson(
        _$_OrganizerUpdateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'id': instance.id,
    };
