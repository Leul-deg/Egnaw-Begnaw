// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_create_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventCreateModel _$$_EventCreateModelFromJson(Map<String, dynamic> json) =>
    _$_EventCreateModel(
      organizerId: json['organizerId'] as String,
      description: json['description'] as String,
      title: json['title'] as String,
      place: json['place'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      availableSeats: json['availableSeats'] as int,
      ticketsSold: json['ticketsSold'] as int,
      required: json['required'],
    );

Map<String, dynamic> _$$_EventCreateModelToJson(_$_EventCreateModel instance) =>
    <String, dynamic>{
      'organizerId': instance.organizerId,
      'description': instance.description,
      'title': instance.title,
      'place': instance.place,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'availableSeats': instance.availableSeats,
      'ticketsSold': instance.ticketsSold,
      'required': instance.required,
    };
