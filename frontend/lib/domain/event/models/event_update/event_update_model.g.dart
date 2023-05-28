// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventUpdateModel _$$_EventUpdateModelFromJson(Map<String, dynamic> json) =>
    _$_EventUpdateModel(
      description: json['description'] as String,
      title: json['title'] as String,
      place: json['place'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      availableSeats: json['availableSeats'] as int,
      ticketsSold: json['ticketsSold'] as int,
    );

Map<String, dynamic> _$$_EventUpdateModelToJson(_$_EventUpdateModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'title': instance.title,
      'place': instance.place,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'availableSeats': instance.availableSeats,
      'ticketsSold': instance.ticketsSold,
    };
