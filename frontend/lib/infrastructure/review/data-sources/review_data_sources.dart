import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:frontend/domain/review/review.dart';

class ReviewDataSource implements ReviewRepository {
  final http.Client client;
  final SharedPreferences sharedPreferences;

  // final API_URL = "dotenv.env['API_URL']";
    final API_URL = "http://10.0.2.2:3000";


  ReviewDataSource({
    required this.client,
    required this.sharedPreferences,
  });

  @override
  Future<Either<ReviewFailure, Object>> createReview(
      ReviewCreateModel reviewCreateModel) async {
    final response = await client.post(
      Uri.parse('$API_URL/review'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: reviewCreateModel.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return  Left(ReviewFailure.invalidReview());
    } else {
      return  Left(ReviewFailure.serverError());
    }
  }

  @override
  Future<Either<ReviewFailure, Object>> updateReview(
      ReviewUpdateModel reviewUpdateModel) async {
    final response = await client.put(
      Uri.parse('$API_URL/review/${reviewUpdateModel.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: reviewUpdateModel.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return  Left(ReviewFailure.invalidReview());
    } else {
      return  Left(ReviewFailure.serverError());
    }
  }

  @override
  Future<Either<ReviewFailure, Object>> deleteReview(String id) async {
    final response = await client.delete(
      Uri.parse('$API_URL/review/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return  const Right(Object);
    } else if (response.statusCode == 400) {
      return  Left(ReviewFailure.invalidReview());
    } else {
      return  Left(ReviewFailure.serverError());
    }
  }

  @override
  Future<Either<ReviewFailure, List<Object>>> getAllReviews() async {
    try {
      final response = await client.get(
        Uri.parse('$API_URL/review'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode == 200) {
        return Right(json.decode(response.body) as List<Object>);
      } else if (response.statusCode == 400) {
        return  Left(ReviewFailure.invalidReview());
      } else {
        return  Left(ReviewFailure.serverError());
      }
    } catch (e) {
      return  Left(ReviewFailure.serverError());
    }
  }

  @override
  Future<Either<ReviewFailure, Object>> getReview(String id) async {
    try {
      final response = await client.get(
        Uri.parse('$API_URL/review/$id'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode == 200) {
        return Right((json.decode(response.body)));
      } else if (response.statusCode == 400) {
        return  Left(ReviewFailure.invalidReview());
      } else {
        return  Left(ReviewFailure.serverError());
      }
    } catch (e) {
      return  Left(ReviewFailure.serverError());
    }
  }
}
