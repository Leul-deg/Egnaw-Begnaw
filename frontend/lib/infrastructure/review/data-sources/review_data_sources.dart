import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:frontend/data/local/local_database/local_storage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:frontend/domain/review/review.dart';

class ReviewDataSource implements ReviewRepository {
  final http.Client client;
  final SharedPreferences sharedPreferences;
  final LocalDatabase localStorage = LocalDatabase.instance;

  final API_URL = "dotenv.env['API_URL']";

  ReviewDataSource({
    required this.client,
    required this.sharedPreferences,
  });

  @override
  Future<Either<ReviewFailure, Object>> createReview(
      ReviewCreateModel reviewCreateModel) async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');

    final response = await client.post(
      Uri.parse('$API_URL/review'),
       headers: {'Content-Type': 'application/json; charset=UTF-8','Authorization': 'Bearer $jwtToken'}
,
      body: reviewCreateModel.toJson(),
    );



    if (response.statusCode == 200) {

      try{final Map<String, Object?> responseBody = jsonDecode(response.body);
      final dynamic id = responseBody.remove('_id');
      responseBody.remove("__v");
      responseBody.addAll({'reviewId': id});
      final String encodedBody = jsonEncode(responseBody);
      localStorage.insert('reviews' , responseBody);}

      catch(e){
        print(e);
      }




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
        final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
    final response = await client.put(
      Uri.parse('$API_URL/review/${reviewUpdateModel.id}'),
             headers: {'Content-Type': 'application/json; charset=UTF-8','Authorization': 'Bearer $jwtToken'}
,
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
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
    final response = await client.delete(
      Uri.parse('$API_URL/review/$id'),
             headers: {'Content-Type': 'application/json; charset=UTF-8','Authorization': 'Bearer $jwtToken'}
,
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
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');

    var revs = await localStorage.getter('reviews');
    if (revs.isNotEmpty){

      
      return Right(revs);
    }
    try {
      final response = await client.get(
        Uri.parse('$API_URL/review'),
               headers: {'Content-Type': 'application/json; charset=UTF-8','Authorization': 'Bearer $jwtToken'}
,
      );

      if (response.statusCode == 200) {

      await localStorage.addReviews(json.decode(response.body) as List<Object>);

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
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
    try {
      final response = await client.get(
        Uri.parse('$API_URL/review/$id'),
              headers: {'Content-Type': 'application/json; charset=UTF-8','Authorization': 'Bearer $jwtToken'}
,
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
