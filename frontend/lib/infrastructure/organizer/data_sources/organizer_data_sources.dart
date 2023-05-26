import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/organizer/organizer_repository/organizer_repositories.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:frontend/domain/organizer/organizer.dart';

class OrganizerDataSource implements OrganizerRepository {
  final http.Client client;
  final SharedPreferences sharedPreferences;
  final API_URL = "dotenv.env['API_URL']";
  OrganizerDataSource({
    required this.client,
    required this.sharedPreferences,
  });
  @override
  Future<Either<OrganizerFailure, OrganizerModel>> getOrganizerData(
      String id) async {
    final response = await client.get(
      Uri.parse('$API_URL/organizer/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      return Right(OrganizerModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return const Left(OrganizerFailure.invalidOrganizer());
    } else {
      return const Left(OrganizerFailure.serverError());
    }
  }
  // @override
  // Future<Either<OrganizerFailure, OrganizerUpdateModel>> updateOrganizerData(
  //     OrganizerModel newData) async {
  //   final response = await client.put(
  //     Uri.parse('$API_URL/organizer/${newData.id}'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: newData.toJson(),
  //   );
  //   if (response.statusCode == 200) {
  //     return Right(OrganizerUpdateModel.fromJson(json.decode(response.body)));
  //   } else if (response.statusCode == 400) {
  //     return const Left(OrganizerFailure.invalidOrganizer());
  //   } else {
  //     return const Left(OrganizerFailure.serverError());
  //   }
  // }

  @override
  Future<Either<OrganizerFailure, List<OrganizerModel>>> getAllOrganizers(
      OrganizerModel allOrganizer) async {
    try {
      final response = await client.get(
        Uri.parse('$API_URL/organizer'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      final organizerIds = json.decode(response.body) as List;
      final List<OrganizerModel> organizers = [];
      for (var organizerId in organizerIds) {
        final organizer = await client.get(
          Uri.parse('$API_URL/organizer/$organizerId'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        );
        organizers.add(OrganizerModel.fromJson(json.decode(organizer.body)));
      }
      return Right(organizers);
    } catch (e) {
      return const Left(OrganizerFailure.serverError());
    }
  }

  // @override
  // Future<Either<OrganizerFailure, OrganizerModel>> createOrganizer(
  //     OrganizerCreateModel organizerCreateModel) async {
  //   final response = await client.post(
  //     Uri.parse('$API_URL/organizer'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: organizerCreateModel.toJson(),
  //   );
  //   if (response.statusCode == 200) {
  //     return Right(OrganizerModel.fromJson(json.decode(response.body)));
  //   } else if (response.statusCode == 400) {
  //     return const Left(OrganizerFailure.invalidOrganizer());
  //   } else {
  //     return const Left(OrganizerFailure.serverError());
  //   }
  // }
  @override
  Future<Either<OrganizerFailure, OrganizerUpdateModel>> updateOrganizer(
      OrganizerUpdateModel newOrganizer) async {
    final response = await client.put(
      Uri.parse('$API_URL/organizer/${newOrganizer.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: newOrganizer.toJson(),
    );
    if (response.statusCode == 200) {
      return Right(OrganizerUpdateModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return const Left(OrganizerFailure.invalidOrganizer());
    } else {
      return const Left(OrganizerFailure.serverError());
    }
  }

  @override
  Future<Either<OrganizerFailure, Object>> deleteOrganizer(String id) async {
    final response = await client.delete(
      Uri.parse('$API_URL/organizer/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      return const Right(Object);
    } else if (response.statusCode == 400) {
      return const Left(OrganizerFailure.invalidOrganizer());
    } else {
      return const Left(OrganizerFailure.serverError());
    }
  }
}
