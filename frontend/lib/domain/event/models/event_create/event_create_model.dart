import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/event/value_objects/value_objects.dart';

class EventCreateModel {
  const EventCreateModel({
    required this.organizerId,
    required this.description,
    required this.title,
    required this.place,
    required this.startTime,
    required this.endTime,
    required this.availableSeats,
    required this.ticketsSold,
    required this.eventDate,
  });

  final String organizerId;
  final String description;
  final String title;
  final String place;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final int availableSeats;
  final int ticketsSold;
  final DateTime eventDate;

  factory EventCreateModel.fromJson(Map<String, dynamic> json) {
    return EventCreateModel(
      organizerId: json['organizerId'] as String,
      description: json['description'] as String,
      title: json['title'] as String,
      place: json['place'] as String,
      startTime:
          TimeOfDay.fromDateTime(DateTime.parse(json['startTime'] as String)),
      endTime:
          TimeOfDay.fromDateTime(DateTime.parse(json['endTime'] as String)),
      availableSeats: json['availableSeats'] as int,
      ticketsSold: json['ticketsSold'] as int,
      eventDate: DateTime.parse(json['eventDate'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    final today = DateTime.now();
    return {
      'organizerId': organizerId,
      'description': description,
      'title': title,
      'place': place,
      'startTime': DateTime(today.year, today.month, today.day, startTime.hour,
              startTime.minute)
          .toString(),
      'endTime': DateTime(
              today.year, today.month, today.day, endTime.hour, endTime.minute)
          .toString(),
      'availableSeats': availableSeats.toString(),
      'ticketsSold': ticketsSold.toString(),
      'eventDate': eventDate.toString(),
    };
  }
}
