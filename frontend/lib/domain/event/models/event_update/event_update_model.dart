import 'package:flutter/material.dart';

class EventUpdateModel {
  String? description;
  String? title;
  String? place;
  TimeOfDay? startTime;
  TimeOfDay? endTime;
  int? availableSeats;
  int? ticketsSold;
  DateTime? eventDate;

  EventUpdateModel({
    this.description,
    this.title,
    this.place,
    this.startTime,
    this.endTime,
    this.availableSeats,
    this.ticketsSold,
    this.eventDate,
  });

  factory EventUpdateModel.fromJson(Map<String, dynamic> json) {
    return EventUpdateModel(
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
    return {
      'description': description,
      'title': title,
      'place': place,
      'startTime': startTime?.toString(),
      'endTime': endTime?.toString(),
      'availableSeats': availableSeats,
      'ticketsSold': ticketsSold,
      'eventDate': eventDate?.toString(),
    };
  }
}
