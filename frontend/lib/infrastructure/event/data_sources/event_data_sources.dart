import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:frontend/domain/event/event.dart';

import '../../../data/local/local_database/local_storage.dart';

class EventDataSource implements EventRepository {
  
  final client = http.Client();

  final LocalDatabase localStorage = LocalDatabase.instance;
  final API_URL = "http://192.168.56.1:3000";

  EventDataSource();

  @override
  Future<Either<EventFailure, Object>> createEvent(
      EventCreateModel eventCreateModel) async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');

    print('got the event');
    print(eventCreateModel.toJson());

    final response = await client.post(
      Uri.parse('$API_URL/event'),
      body: eventCreateModel.toJson(),
             headers: {
          'Content-Type': 'application/json; charset=UTF-8',
              
              'Authorization': 'Bearer $jwtToken'}
,
    );
    try{
      print(response.body);
      final Map<String, Object?> responseBody = jsonDecode(response.body);
      final dynamic id = responseBody.remove('_id');
      responseBody.remove('__v');
      responseBody.addAll({'eventId': id});
      final String encodedBody = jsonEncode(responseBody);
      print(encodedBody);
      localStorage.insert('events', responseBody);

    }
    catch(e){
      print(e);
    }

    var k = await localStorage.getter('events');
    print(k);
    print("uuuuuuiuuuuuuuuuuuuuuuuuuuuuuuuuuuu");

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

        var k = await localStorage.getEvent(id);

        
     final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
        
        
        


    
    final response = await client.put(
      Uri.parse('$API_URL/event/update/$id'),
      body: eventUpdateModel.toJson(),
         headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $jwtToken'}

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
  final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');

    final response = await client.delete(
      Uri.parse('$API_URL/event/$id'),
             headers: {'Content-Type': 'application/json; charset=UTF-8','Authorization': 'Bearer $jwtToken'}
,
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
  Future<Either<EventFailure, List<Map<String, Object?>>>> getAllEvents() async {

    //check if there are events in local storage if there are not any ask the server\
      
    

    var es = await localStorage.getter('events');

    if (es.isNotEmpty) {
      print('here is the local storage data');
      print("I am not asking sheet from the server");
      print(es);

      return Right(es);
    }

      final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');

  
    print(jwtToken);
    print("this is the token I am using to get the events");
    
    // final response = await client.get(
    //   Uri.parse('$API_URL/event'),
    // );
    final response = await client.get(
  Uri.parse('$API_URL/event'),
  headers: {'Content-Type': 'application/json; charset=UTF-8','Authorization': 'Bearer $jwtToken'},
    );

    print('here is the status code');

    print(response.statusCode);

    if (response.statusCode != 200) {
      return Left(EventFailure.unableToGet());
    } else {
      print('got the events');

      final allEvents = json.decode(response.body);

      print(allEvents.runtimeType);
      await localStorage.insertEvents(allEvents);
      print('here is the data all the way from here ');

      return Right(allEvents);

    }


  }

  @override
  Future<Either<EventFailure, Object>> getEvent(String id) async {
    // Implementation of the getEvent method goes here
    try {

        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final String? jwtToken = prefs.getString('jwt_token');

      print("I am not supposed to be here");
      // Get the event data from the API
      final eventData = await client.get(
        Uri.parse('$API_URL/event/$id'),
               headers: {'Content-Type': 'application/json; charset=UTF-8','Authorization': 'Bearer $jwtToken'}
,

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

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? jwtToken = prefs.getString('jwt_token');
      print('here is the data');
      print(organizerId);
      // Get the event data from the API
      final eventData = await client.get(
        Uri.parse('$API_URL/event/organizer/$organizerId'),
         headers: {'Content-Type': 'application/json; charset=UTF-8','Authorization': 'Bearer $jwtToken'}

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
