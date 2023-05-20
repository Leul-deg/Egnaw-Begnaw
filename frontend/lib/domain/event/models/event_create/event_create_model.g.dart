// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_create_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventCreateModel _$$_EventCreateModelFromJson(Map<String, dynamic> json) =>
    _$_EventCreateModel(
      name: json['name'] as String,
      description: json['description'] as String,
      place: json['place'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      availableSeats: json['availableSeats'] as int,
    );

Map<String, dynamic> _$$_EventCreateModelToJson(_$_EventCreateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'place': instance.place,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'availableSeats': instance.availableSeats,
    };
