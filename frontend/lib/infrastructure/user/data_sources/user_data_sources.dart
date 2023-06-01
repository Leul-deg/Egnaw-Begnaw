import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:frontend/domain/user/user.dart';

import 'package:shared_preferences/shared_preferences.dart';

class UserDataSource implements UserRepository {
  final http.Client client = http.Client();

  final API_URL = "http://localhost:3000";
  UserDataSource();

  @override
  Future<Either<UserFailure, UserModel>> getUserData(String id) async {
    final response = await client.get(
      Uri.parse('$API_URL/user/$id'),
    );

    if (response.statusCode == 200) {
      return Right(UserModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return Left(UserFailure.invalidUser());
    } else {
      return Left(UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, UserUpdateModel>> updateUserData(
      UserModel newData) async {
    print('in update user data');
    // get user id from shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final userData = json.decode(prefs.getString('userData')!);

    final userId = json.decode(userData)['_id'];

    final response = await client.put(
      Uri.parse('$API_URL/user/$userId'),
      body: newData.toJson(),
    );

    print(response.statusCode);

    if (response.statusCode == 200) {
      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return Left(UserFailure.invalidUser());
    } else {
      return Left(UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, List<UserModel>>> getAllUsers(
      UserModel allUser) async {
    try {
      final response = await client.get(
        Uri.parse('$API_URL/user'),
      );
      if (response.statusCode == 200) {
        List<UserModel> users = [];
        for (var user in json.decode(response.body)) {
          users.add(UserModel.fromJson(user));
        }
        return Right(users);
      } else if (response.statusCode == 400) {
        return Left(UserFailure.invalidUser());
      } else {
        return Left(UserFailure.serverError());
      }
    } catch (e) {
      return Left(UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, Object>> deleteUser(String id) async {
    final response = await client.delete(
      Uri.parse('$API_URL/user/$id'),
    );
    if (response.statusCode == 200) {
      return const Right(Object);
    } else if (response.statusCode == 400) {
      return Left(UserFailure.invalidUser());
    } else {
      return Left(UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, dynamic>> updateUser(
      String userId, UserUpdateModel newUser) async {
    final data = newUser.toJson();

    // filter the null values in the data
    data.removeWhere((key, value) => value == null);

    print('finallllll');
    print(data);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    final userData = json.decode(prefs.getString('userData')!);

    final access_token = json.decode(userData)['access_token'];

    final response = await client.put(
      Uri.parse('$API_URL/user/update/$userId'),
      // include the bearer token in the header
      headers: <String, String>{
        'Authorization': 'Bearer $access_token',
      },
      body: data,
    );

    print(response.statusCode);

    if (response.statusCode == 200) {
      // rewrite the user data in shared preferences

      prefs.setString('userData', json.encode(response.body));

      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return Left(UserFailure.invalidUser());
    } else {
      return Left(UserFailure.serverError());
    }
  }
}
