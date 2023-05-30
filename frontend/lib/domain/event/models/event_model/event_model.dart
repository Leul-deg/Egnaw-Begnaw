import 'package:frontend/domain/event/value_objects/value_objects.dart';

class EventModel {
  final String id;
  final String name;
  final String description;
  final String title;
  final Place place;
  final StartTime startTime;
  final EndTime endTime;
  final String createdAt;
  final String updatedAt;
  final OrganizerId organizerId;
  final int availableSeats;
  final int takenSeats;
  final int ticketsSold;

  EventModel({
    required this.id,
    required this.name,
    required this.description,
    required this.title,
    required this.place,
    required this.startTime,
    required this.endTime,
    required this.createdAt,
    required this.updatedAt,
    required this.organizerId,
    required this.availableSeats,
    required this.takenSeats,
    required this.ticketsSold,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      title: json['title'],
      place: Place.fromJson(json['place']),
      startTime: StartTime.fromJson(json['startTime']),
      endTime: EndTime.fromJson(json['endTime']),
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      organizerId: json['organizerId'],
      availableSeats: json['availableSeats'],
      takenSeats: json['takenSeats'],
      ticketsSold: json['ticketsSold'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'title': title,
      'place': place.toJson(),
      'startTime': startTime.toJson(),
      'endTime': endTime.toJson(),
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'organizerId': organizerId.value,
      'availableSeats': availableSeats,
      'takenSeats': takenSeats,
      'ticketsSold': ticketsSold,
    };
  }
}