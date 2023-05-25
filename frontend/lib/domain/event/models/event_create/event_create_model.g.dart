// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_create_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventCreateModel _$$_EventCreateModelFromJson(Map<String, dynamic> json) =>
    _$_EventCreateModel(
      organizerId:
          OrganizerId.fromJson(json['organizerId'] as Map<String, dynamic>),
      description: json['description'] as String,
      title: json['title'] as String,
      place: Place.fromJson(json['place'] as Map<String, dynamic>),
      startTime: StartTime.fromJson(json['startTime'] as Map<String, dynamic>),
      endTime: EndTime.fromJson(json['endTime'] as Map<String, dynamic>),
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
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'availableSeats': instance.availableSeats,
      'ticketsSold': instance.ticketsSold,
      'required': instance.required,
    };
