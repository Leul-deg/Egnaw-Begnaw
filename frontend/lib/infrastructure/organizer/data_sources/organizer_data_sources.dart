import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:frontend/domain/organizer/organizer.dart';

import 'package:shared_preferences/shared_preferences.dart';

class OrganizerDataSource implements OrganizerRepository {
  final http.Client client = http.Client();
  // final API_URL = "http://localhost:3000";
  final API_URL = "http://10.0.2.2:3000";

  OrganizerDataSource();
  @override
  Future<Either<OrganizerFailure, Object>> getOrganizerData(String id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
    final response = await client.get(Uri.parse('$API_URL/organizer/$id'),
        headers: {'Authorization': 'Bearer $jwtToken'});
    if (response.statusCode == 200) {
      return Right(OrganizerModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return Left(OrganizerFailure.invalidOrganizer());
    } else {
      return Left(OrganizerFailure.serverError());
    }
  }

  @override
  Future<Either<OrganizerFailure, List<Object>>> getAllOrganizers(
      OrganizerModel allOrganizer) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
    try {
      final response = await client.get(
        Uri.parse('$API_URL/organizer'),
      );

      final organizerIds = json.decode(response.body) as List;
      final List<OrganizerModel> organizers = [];
      for (var organizerId in organizerIds) {
        final organizer = await client.get(
            Uri.parse('$API_URL/organizer/$organizerId'),
            headers: {'Authorization': 'Bearer $jwtToken'});
        organizers.add(OrganizerModel.fromJson(json.decode(organizer.body)));
      }
      return Right(organizers);
    } catch (e) {
      return Left(OrganizerFailure.serverError());
    }
  }

  @override
  Future<Either<OrganizerFailure, Object>> updateOrganizer(
      String organizerId, OrganizerUpdateModel newOrganizer) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
    // print(newOrganizer.toJson());

    final data = newOrganizer.toJson();

    data.removeWhere((key, value) => value == null);
    print(data);

    final response = await client.post(
        Uri.parse('$API_URL/organizer/update/$organizerId'),
        body: data,
        headers: {'Authorization': 'Bearer $jwtToken'});

    print(response.statusCode);

    if (response.statusCode == 201) {
      final newData = json.encode(response.body);

      SharedPreferences prefs = await SharedPreferences.getInstance();

      prefs.setString('userData', newData);
      print('here is the new data');

      print(json.decode(
          json.decode(prefs.getString('userData')!))['organizationName']);

      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return Left(OrganizerFailure.invalidOrganizer());
    } else {
      return Left(OrganizerFailure.serverError());
    }
  }

  @override
  Future<Either<OrganizerFailure, Object>> deleteOrganizer(String id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
    final response = await client.delete(Uri.parse('$API_URL/organizer/$id'),
        headers: {'Authorization': 'Bearer $jwtToken'});

    print(response.statusCode);

    if (response.statusCode == 200) {
      // rewrite the shared preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('userData', json.encode(response.body));
      return const Right(Object);
    } else if (response.statusCode == 400) {
      return Left(OrganizerFailure.invalidOrganizer());
    } else {
      return Left(OrganizerFailure.serverError());
    }
  }
}
