import 'dart:convert';

import 'package:http/http.dart' as client;

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:frontend/domain/auth/auth.dart';

class AuthDataSource implements AuthRepository {
  final API_URL = "http://localhost:3000";
  final Future<SharedPreferences> sharedPreferences =
      SharedPreferences.getInstance();

  AuthDataSource();

  @override
  Future<Either<AuthFailure, Object>> loginUser(
      UserLoginModel userLoginModel) async {
    print('Submitting to backend...');
    final response = await client.post(
      Uri.parse('$API_URL/auth/user/signin'),
      body: userLoginModel.toJson(),
    );

    print('got response');
    print(response.statusCode);

    if (response.statusCode == 200) {
      // Save the JWT token to shared preferences
      final SharedPreferences prefs = await sharedPreferences;
      prefs.setString('jwt_token', json.decode(response.body)['access_token']);
      prefs.setString('userData', json.encode(response.body));

      return Right(json.decode(response.body));
    } else if (response.statusCode == 403) {
      return const Left(AuthFailure.invalidEmailAndPasswordCombination());
    } else {
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Object>> createUser(
      UserCreateModel userCreateModel) async {
    print('Submitting to backend...');
    final response = await client.post(
      Uri.parse('$API_URL/auth/user/signup'),
      body: userCreateModel.toJson(),
    );

    print(response.statusCode);

    print(response.body);

    if (response.statusCode == 201) {
      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return const Left(AuthFailure.emailAlreadyInUse());
    } else {
      return const Left(AuthFailure.serverError());
    }
  }

  // organizer register
  @override
  Future<Either<AuthFailure, Object>> createOrganizer(
      OrganizerCreateModel organizerCreateModel) async {
    final response = await client.post(
      Uri.parse('$API_URL/auth/organizer/signup'),
      body: organizerCreateModel.toJson(),
    );

    if (response.statusCode == 201) {
      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return const Left(AuthFailure.emailAlreadyInUse());
    } else {
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Object>> loginOrganizer(
      OrganizerLoginModel organizerLoginModel) async {
    print('logging in...');
    final response = await client.post(
      Uri.parse('$API_URL/auth/organizer/signin'),
      body: organizerLoginModel.toJson(),
    );

    // print the userdata from

    print(response.statusCode);
    print('noooo');

    print(response.body);

    if (response.statusCode == 200) {
      // Save the JWT token to shared preferences
      final SharedPreferences prefs = await sharedPreferences;
      await prefs.setString('userData', json.encode(response.body));

      prefs.setString('jwt_token', json.decode(response.body)['access_token']);

      return Right(json.decode(response.body));
    } else if (response.statusCode == 403) {
      return const Left(AuthFailure.invalidEmailAndPasswordCombination());
    } else {
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  Future<void> logoutUser() async {
    // Remove the JWT token from shared preferences
    SharedPreferences prefs = await sharedPreferences;
    prefs.remove('jwt_token');
    prefs.remove('userData');

    final response = await client.post(
      Uri.parse('$API_URL/auth/logout'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
  }

  // organizer logout
  @override
  Future<void> logoutOrganizer() async {
    // Remove the JWT token from shared preferences
    SharedPreferences prefs = await sharedPreferences;
    prefs.remove('jwt_token');
    prefs.remove('userData');

    final response = await client.post(
      Uri.parse('$API_URL/auth/logout/organizer'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
  }

  // Get the JWT token from shared preferences
  Future<String?> getJwtToken() async {
    return null;

    // return sharedPreferences.getString('jwtToken');
  }
}
