// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventUpdateModel _$$_EventUpdateModelFromJson(Map<String, dynamic> json) =>
    _$_EventUpdateModel(
      description: json['description'] as String,
      title: json['title'] as String,
      place: Place.fromJson(json['place'] as Map<String, dynamic>),
      startTime: StartTime.fromJson(json['startTime'] as Map<String, dynamic>),
      endTime: EndTime.fromJson(json['endTime'] as Map<String, dynamic>),
      availableSeats: json['availableSeats'] as int,
      eventId: json['eventId'] as String,
      ticketsSold: json['ticketsSold'] as int,
      organizerId:
          OrganizerId.fromJson(json['organizerId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EventUpdateModelToJson(_$_EventUpdateModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'title': instance.title,
      'place': instance.place,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'availableSeats': instance.availableSeats,
      'eventId': instance.eventId,
      'ticketsSold': instance.ticketsSold,
      'organizerId': instance.organizerId,
    };
