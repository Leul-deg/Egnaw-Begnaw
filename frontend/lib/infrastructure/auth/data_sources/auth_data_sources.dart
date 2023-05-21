import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:frontend/domain/auth/auth.dart';
import 'package:frontend/domain/organizer/organizer.dart';
import 'package:frontend/domain/user/user.dart';

class AuthDataSource implements AuthRepository {
  final http.Client client;
  final SharedPreferences sharedPreferences;

  final API_URL = dotenv.env['API_URL'];

  AuthDataSource({
    required this.client,
    required this.sharedPreferences,
  });

  @override
  Future<Either<AuthFailure, UserModel>> loginUser(
      UserLoginModel userLoginModel) async {
    final response = await client.post(
      Uri.parse('$API_URL/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(userLoginModel.toJson()),
    );

    if (response.statusCode == 200) {
      // Save the JWT token to shared preferences
      await sharedPreferences.setString('jwtToken', response.body);

      return Right(UserModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 401) {
      return const Left(AuthFailure.invalidEmailAndPasswordCombination());
    } else {
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, UserModel>> createUser(
      UserCreateModel userCreateModel) async {
    final response = await client.post(
      Uri.parse('$API_URL/auth/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: userCreateModel.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(UserModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return const Left(AuthFailure.emailAlreadyInUse());
    } else {
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, OrganizerModel>> loginOrganizer(
      OrganizerLoginModel organizerLoginModel) async {
    final response = await client.post(
      Uri.parse('$API_URL/auth/login/organizer'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: organizerLoginModel.toJson(),
    );

    if (response.statusCode == 200) {
      // Save the JWT token to shared preferences
      await sharedPreferences.setString('jwtToken', response.body);

      return Right(OrganizerModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 401) {
      return const Left(AuthFailure.invalidEmailAndPasswordCombination());
    } else {
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  Future<void> logoutUser() async {
    // Remove the JWT token from shared preferences
    await sharedPreferences.remove('jwtToken');

    final response = await client.post(
      Uri.parse('$API_URL/auth/logout'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
  }

  // organizer register
  @override
  Future<Either<AuthFailure, OrganizerModel>> createOrganizer(
      OrganizerCreateModel organizerCreateModel) async {
    final response = await client.post(
      Uri.parse('$API_URL/auth/register/organizer'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: organizerCreateModel.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(OrganizerModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return const Left(AuthFailure.emailAlreadyInUse());
    } else {
      return const Left(AuthFailure.serverError());
    }
  }

  // organizer logout
  @override
  Future<void> logoutOrganizer() async {
    // Remove the JWT token from shared preferences
    await sharedPreferences.remove('jwtToken');

    final response = await client.post(
      Uri.parse('$API_URL/auth/logout/organizer'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
  }

  // Get the JWT token from shared preferences
  Future<String?> getJwtToken() async {
    return sharedPreferences.getString('jwtToken');
  }
}
