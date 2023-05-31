import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:frontend/domain/user/user.dart';

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
    final response = await client.put(
      Uri.parse('$API_URL/user/${newData.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: newData.toJson(),
    );
    if (response.statusCode == 200) {
      return Right(UserUpdateModel.fromJson(json.decode(response.body)));
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
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
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
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
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
  Future<Either<UserFailure, UserUpdateModel>> updateUser(
      String userId, UserUpdateModel newUser) async {
    final response = await client.put(
      Uri.parse('$API_URL/user/$userId'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: newUser.toJson(),
    );
    if (response.statusCode == 200) {
      return Right(UserUpdateModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return Left(UserFailure.invalidUser());
    } else {
      return Left(UserFailure.serverError());
    }
  }
}
