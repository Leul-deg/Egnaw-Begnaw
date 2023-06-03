import 'dart:convert';

import 'package:frontend/data/local/local_database/local_storage.dart';
import 'package:http/http.dart' as client;

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:frontend/domain/auth/auth.dart';

class AuthDataSource implements AuthRepository {
  AuthDataSource() {}
  // final API_URL = "http:// 192.168.195.119:3000";
    final API_URL = "http://192.168.56.1:3000";

  final Future<SharedPreferences> sharedPreferences =
      SharedPreferences.getInstance();

  @override
  Future<Either<AuthFailure, Object>> loginUser(
      UserLoginModel userLoginModel) async {
    print('Submitting to backend...');
    final response = await client.post(
      Uri.parse('$API_URL/auth/user/signin'),
      body: userLoginModel.toJson(),
    );

    print('waiting for loggiqng in...');

    print('got response');
    print(response.statusCode);

    if (response.statusCode == 200) {
      // Save the JWT token to shared preferences
      final SharedPreferences prefs = await sharedPreferences;
      prefs.setString('jwt_token', json.decode(response.body)['access_token']);
      prefs.setString('userData', json.encode(response.body));

      print(prefs.getString('userData'));



      return Right(json.decode(response.body));
    } else if (response.statusCode == 403) {
      print('Invalid email or password, 6734');
      return Left(AuthFailure.invalidEmailAndPasswordCombination());
    } else {
      print('jere=ahfkasdfue');
      return Left(AuthFailure.serverError());
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
      return Left(AuthFailure.emailAlreadyInUse());
    } else {
      return Left(AuthFailure.serverError());
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
      return Left(AuthFailure.emailAlreadyInUse());
    } else {
      return Left(AuthFailure.serverError());
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

      print(response.statusCode);

      return Right(json.decode(response.body));
    } else if (response.statusCode == 403) {
      return Left(AuthFailure.invalidEmailAndPasswordCombination());
    } else {
      return Left(AuthFailure.serverError());
    }
  }

  // delete user account
  Future<Either<AuthFailure, Object>> deleteUserAccount(String userId) async {
    print(userId);
    final response = await client.delete(
      Uri.parse('$API_URL/user/delete/$userId'),
    );

    print(response.statusCode);

    if (response.statusCode == 200) {
      return Right(json.decode('{}'));
    } else if (response.statusCode == 400) {
      return Left(AuthFailure.emailAlreadyInUse());
    } else {
      return Left(AuthFailure.serverError());
    }
  }

  // delete organizer account
  Future<Either<AuthFailure, Object>> deleteOrganizerAccount(
      String organizerId) async {
    print(organizerId);
    final response = await client.delete(
      Uri.parse('$API_URL/organizer/delete/$organizerId'),
    );

    print(response.statusCode);

    if (response.statusCode == 200) {
      return Right(json.decode('{}'));
    } else if (response.statusCode == 400) {
      return Left(AuthFailure.emailAlreadyInUse());
    } else {
      return Left(AuthFailure.serverError());
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
