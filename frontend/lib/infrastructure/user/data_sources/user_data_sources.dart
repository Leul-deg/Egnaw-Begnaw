import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/user/user_repository/user_repositories.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:frontend/domain/user/user.dart';
class UserDataSource implements UserRepository{
  final http.Client client;
  final SharedPreferences sharedPreferences;
  final API_URL = dotenv.env['API_URL'];
  UserDataSource({
    required this.client,
    required this.sharedPreferences,
  });
  @override
  Future<Either<UserFailure, UserModel>> getUserData(String id) async {
    final response = await client.get(
      Uri.parse('$API_URL/user/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      return Right(UserModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return const Left(UserFailure.invalidUser());
    } else {
      return const Left(UserFailure.serverError());
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
      return const Left(UserFailure.invalidUser());
    } else {
      return const Left(UserFailure.serverError());
    }
  }
  @override
  Future<Either<UserFailure, List<UserModel>>> getAllUsers(
      UserModel allUser) async {
   try{
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
      return const Left(UserFailure.invalidUser());
    } else {
      return const Left(UserFailure.serverError());
    }
   }catch(e){
     return const Left(UserFailure.serverError());
   }
  }
  @override
  Future<Either<UserFailure, Unit>> deleteUser(String id) async {
    final response = await client.delete(
      Uri.parse('$API_URL/user/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      return const Right(unit);
    } else if (response.statusCode == 400) {
      return const Left(UserFailure.invalidUser());
    } else {
      return const Left(UserFailure.serverError());
    }
  }
  @override
  Future<Either<UserFailure, UserUpdateModel>> updateUser(
      UserUpdateModel newUser) async {
    final response = await client.put(
      Uri.parse('$API_URL/user/${newUser.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: newUser.toJson(),
    );
    if (response.statusCode == 200) {
      return Right(UserUpdateModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return const Left(UserFailure.invalidUser());
    } else {
      return const Left(UserFailure.serverError());
    }
  }
}
