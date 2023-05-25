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
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      availableSeats: json['availableSeats'] as int,
      eventId: json['eventId'] as String,
      ticketsSold: json['ticketsSold'] as int,
      organizerId: json['organizerId'] as String,
    );

Map<String, dynamic> _$$_EventUpdateModelToJson(_$_EventUpdateModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'title': instance.title,
      'place': instance.place,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'availableSeats': instance.availableSeats,
      'eventId': instance.eventId,
      'ticketsSold': instance.ticketsSold,
      'organizerId': instance.organizerId,
    };
