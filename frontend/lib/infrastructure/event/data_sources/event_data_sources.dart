import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:frontend/domain/event/event.dart';

class EventDataSource implements EventRepository {
  final client = http.Client();

  final API_URL = "http://localhost:3000";

  EventDataSource();

  @override
  Future<Either<EventFailure, Object>> createEvent(
      EventCreateModel eventCreateModel) async {
    print('got the event');
    print(eventCreateModel.toJson());

    final response = await client.post(
      Uri.parse('$API_URL/event'),
      body: eventCreateModel.toJson(),
    );

    print('got response');
    print(response.statusCode);

    if (response.statusCode == 201) {
      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return Left(EventFailure.invalidEvent());
    } else {
      return Left(EventFailure.serverError());
    }
  }

  @override
  Future<Either<EventFailure, Object>> updateEvent(
      String id, EventUpdateModel eventUpdateModel) async {
        print('in the data source');
    final data = eventUpdateModel.toJson();
    data.removeWhere((key, value) => value == null);

    final response = await client.put(
      Uri.parse('$API_URL/event/update/$id'),
      body: data,
    );

    print('got response');
    print(response.statusCode);

    if (response.statusCode == 200) {
      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return Left(EventFailure.invalidEvent());
    } else {
      return Left(EventFailure.serverError());
    }
  }

  @override
  Future<Either<EventFailure, Object>> deleteEvent(String id) async {
    final response = await client.delete(
      Uri.parse('$API_URL/event/$id'),
    );

    if (response.statusCode == 200) {
      return const Right(Object);
    } else if (response.statusCode == 400) {
      return Left(EventFailure.invalidEvent());
    } else {
      return Left(EventFailure.serverError());
    }
  }

  @override
  Future<Either<EventFailure, List<dynamic>>> getAllEvents() async {
    final response = await client.get(
      Uri.parse('$API_URL/event'),
    );

    print('here is the status code');

    print(response.statusCode);

    if (response.statusCode != 200) {
      return Left(EventFailure.unableToGet());
    } else {
      print('got the events');

      final allEvents = json.decode(response.body);

      return Right(allEvents);
    }
  }

  @override
  Future<Either<EventFailure, Object>> getEvent(String id) async {
    // Implementation of the getEvent method goes here
    try {
      // Get the event data from the API
      final eventData = await client.get(
        Uri.parse('$API_URL/event/$id'),
      );

      print(eventData.statusCode);

      // If the response is not 200, throw an error
      if (eventData.statusCode != 200) {
        return Left(EventFailure.unableToGet());
      }

      // Convert the response body to a Map object
      final eventDataMap = json.decode(eventData.body) as Map<String, dynamic>;

      // Return the EventModel object wrapped in a Right Either object
      return Right(eventDataMap);
    } catch (e) {
      // If there is an error getting the event data from the API, return a Left Either object
      // with an EventFailure object containing an error message
      return Left(EventFailure.unableToGet());
    }
  }

  // get events by organizerId

  @override
  Future<Either<EventFailure, List<dynamic>>> getEventsByOrganizerId(
      String organizerId) async {
    // Implementation of the getEvent method goes here
    try {
      print('here is the data');
      print(organizerId);
      // Get the event data from the API
      final eventData = await client.get(
        Uri.parse('$API_URL/event/organizer/$organizerId'),
      );

      print(eventData.statusCode);

      // If the response is not 200, throw an error
      if (eventData.statusCode != 200) {
        return Left(EventFailure.unableToGet());
      }

      print('here is the actual data');

      print(eventData.body);

      // Convert the response body to a Map object
      final eventDataMap = json.decode(eventData.body) as List<dynamic>;

      // Return the EventModel object wrapped in a Right Either object
      return Right(eventDataMap);
    } catch (e) {
      // If there is an error getting the event data from the API, return a Left Either object
      // with an EventFailure object containing an error message
      return Left(EventFailure.unableToGet());
    }
  }
}
