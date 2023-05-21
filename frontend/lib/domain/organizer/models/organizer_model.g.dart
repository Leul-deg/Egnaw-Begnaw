// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organizer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrganizerModel _$$_OrganizerModelFromJson(Map<String, dynamic> json) =>
    _$_OrganizerModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$_OrganizerModelToJson(_$_OrganizerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'createdAt': instance.createdAt,
    };
