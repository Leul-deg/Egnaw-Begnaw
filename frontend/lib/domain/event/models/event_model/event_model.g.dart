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
      place: json['place'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      organizerId: json['organizerId'] as String,
      availableSeats: json['availableSeats'] as int,
      takenSeats: json['takenSeats'] as int,
      ticketsSold: json['ticketsSold'] as int,
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
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
