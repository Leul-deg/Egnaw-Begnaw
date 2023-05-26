import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:frontend/domain/event/event.dart';

class EventDataSource implements EventRepository {
  final http.Client client;
  final SharedPreferences sharedPreferences;

  final API_URL = "dotenv.env['API_URL']";

  EventDataSource({
    required this.client,
    required this.sharedPreferences,
  });

  @override
  Future<Either<EventFailure, Object>> createEvent(
      EventCreateModel eventCreateModel) async {
    final response = await client.post(
      Uri.parse('$API_URL/event'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: eventCreateModel.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return const Left(EventFailure.invalidEvent());
    } else {
      return const Left(EventFailure.serverError());
    }
  }

  @override
  Future<Either<EventFailure, Object>> updateEvent(
      String id, EventUpdateModel eventUpdateModel) async {
    final response = await client.put(
      Uri.parse('$API_URL/event/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: eventUpdateModel.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return const Left(EventFailure.invalidEvent());
    } else {
      return const Left(EventFailure.serverError());
    }
  }

  @override
  Future<Either<EventFailure, Object>> deleteEvent(String id) async {
    final response = await client.delete(
      Uri.parse('$API_URL/event/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return const Right(Object);
    } else if (response.statusCode == 400) {
      return const Left(EventFailure.invalidEvent());
    } else {
      return const Left(EventFailure.serverError());
    }
  }

  @override
  Future<Either<EventFailure, List<Object>>> getAllEvents() async {
    try {
      final response = await client.get(
        Uri.parse('$API_URL/event'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
      );

      final eventsIds = json.decode(response.body)['ids'] as List<String>;
      final allEvents = <EventModel>[];

      for (final eventId in eventsIds) {
        final event = await getEvent(eventId);
        allEvents.add(event as EventModel);
      }

      return Right(allEvents as List<Object>);
    } catch (e) {
      return const Left(EventFailure.unableToGet());
    }
  }

  @override
  Future<Either<EventFailure, Object>> getEvent(String id) async {
    // Implementation of the getEvent method goes here
    try {
      // Get the event data from the API
      final eventData = await client.get(
        Uri.parse('$API_URL/event/$id'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
      );

      // If the response is not 200, throw an error
      if (eventData.statusCode != 200) {
        throw Exception();
      }

      // Convert the response body to a Map object
      final eventDataMap = json.decode(eventData.body) as Map<String, dynamic>;

      // Create an EventModel object from the API data
      final eventModel = EventModel(
          id: id,
          name: eventDataMap['name'],
          title: eventDataMap['title'],
          description: eventDataMap['description'],
          startTime: eventDataMap['startTime'],
          place: eventDataMap['place'],
          availableSeats: eventDataMap['availableSeats'],
          ticketsSold: eventDataMap['ticketsSold'],
          takenSeats: eventDataMap['takenSeats'],
          createdAt: eventDataMap['createdAt'],
          updatedAt: eventDataMap['updatedAt'],
          organizerId: eventDataMap['organizerId'],
          endTime: eventDataMap['endTime']);

      // Return the EventModel object wrapped in a Right Either object
      return Right(eventModel as Object);
    } catch (e) {
      // If there is an error getting the event data from the API, return a Left Either object
      // with an EventFailure object containing an error message
      return const Left(EventFailure.unableToGet());
    }
  }
}
