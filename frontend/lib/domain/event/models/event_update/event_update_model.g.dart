// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventUpdateModel _$$_EventUpdateModelFromJson(Map<String, dynamic> json) =>
    _$_EventUpdateModel(
      name: json['name'] as String,
      description: json['description'] as String,
      place: json['place'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      availableSeats: json['availableSeats'] as int,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_EventUpdateModelToJson(_$_EventUpdateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'place': instance.place,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'availableSeats': instance.availableSeats,
      'id': instance.id,
    };
