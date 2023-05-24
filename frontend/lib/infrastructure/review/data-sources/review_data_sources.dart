import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:frontend/domain/review/review.dart';

class ReviewDataSource implements ReviewRepository{
  final http.Client client;
  final SharedPreferences sharedPreferences;

  final API_URL = dotenv.env['API_URL'];

  ReviewDataSource({
    required this.client,
    required this.sharedPreferences,
  });

  @override
  Future<Either<ReviewFailure, ReviewModel>> createReview(
      ReviewCreateModel reviewCreateModel) async {
    final response = await client.post(
      Uri.parse('$API_URL/review'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: reviewCreateModel.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(ReviewModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return const Left(ReviewFailure.invalidReview());
    } else {
      return const Left(ReviewFailure.serverError());
    }
  }

  @override
  Future<Either<ReviewFailure, ReviewModel>> updateReview(
      ReviewUpdateModel reviewUpdateModel) async {
    final response = await client.put(
      Uri.parse('$API_URL/review/${reviewUpdateModel.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: reviewUpdateModel.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(ReviewModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return const Left(ReviewFailure.invalidReview());
    } else {
      return const Left(ReviewFailure.serverError());
    }
  }

  @override
  Future<Either<ReviewFailure, Unit>> deleteReview(String id) async {
    final response = await client.delete(
      Uri.parse('$API_URL/review/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return const Right(unit);
    } else if (response.statusCode == 400) {
      return const Left(ReviewFailure.invalidReview());
    } else {
      return const Left(ReviewFailure.serverError());
    }
  }
  
  @override
  Future<Either<ReviewFailure, List<ReviewModel>>> getAllReviews() async {
    try{
      final response = await client.get(
        Uri.parse('$API_URL/review'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode == 200) {
        return Right(ReviewModel.fromJson(json.decode(response.body)) as List<ReviewModel>);
      } else if (response.statusCode == 400) {
        return const Left(ReviewFailure.invalidReview());
      } else {
        return const Left(ReviewFailure.serverError());
      }
    } catch (e) {
      return const Left(ReviewFailure.serverError());
    }
  }
  
  @override
  Future<Either<ReviewFailure, ReviewModel>> getReview(String id) async {
    try{
      final response = await client.get(
        Uri.parse('$API_URL/review/$id'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode == 200) {
        return Right(ReviewModel.fromJson(json.decode(response.body)));
      } else if (response.statusCode == 400) {
        return const Left(ReviewFailure.invalidReview());
      } else {
        return const Left(ReviewFailure.serverError());
      }
    } catch (e) {
      return const Left(ReviewFailure.serverError());
    }
  }
}