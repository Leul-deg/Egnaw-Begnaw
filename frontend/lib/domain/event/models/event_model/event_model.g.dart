// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      title: json['title'] as String,
      place: Place.fromJson(json['place'] as Map<String, dynamic>),
      startTime: StartTime.fromJson(json['startTime'] as Map<String, dynamic>),
      endTime: EndTime.fromJson(json['endTime'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      organizerId:
          OrganizerId.fromJson(json['organizerId'] as Map<String, dynamic>),
      availableSeats: json['availableSeats'] as int,
      takenSeats: json['takenSeats'] as int,
      ticketsSold: json['ticketsSold'] as int,
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'title': instance.title,
      'place': instance.place,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'organizerId': instance.organizerId,
      'availableSeats': instance.availableSeats,
      'takenSeats': instance.takenSeats,
      'ticketsSold': instance.ticketsSold,
    };
