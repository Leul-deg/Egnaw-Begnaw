import 'package:dartz/dartz.dart';

import 'package:frontend/domain/auth/auth.dart';


class AuthRepositoryImp implements AuthRepository {
  final AuthRepository authDataSource;

  AuthRepositoryImp({
    required this.authDataSource,
  });

  // create user
  @override
  Future<Either<AuthFailure, Object>> createUser(
      UserCreateModel userCreateModel) async {
    return await authDataSource.createUser(userCreateModel);
  }

  // login user
  @override
  Future<Either<AuthFailure, Object>> loginUser(
      UserLoginModel userLoginModel) async {
    return await authDataSource.loginUser(userLoginModel);
  }

  // logout user
  @override
  Future<void> logoutUser() async {
    return await authDataSource.logoutUser();
  }

  // create organizer
  @override
  Future<Either<AuthFailure, Object>> createOrganizer(
      OrganizerCreateModel organizerCreateModel) async {
    return await authDataSource.createOrganizer(organizerCreateModel);
  }

  // login organizer
  @override
  Future<Either<AuthFailure, Object>> loginOrganizer(
      OrganizerLoginModel organizerLoginModel) async {
    return await authDataSource.loginOrganizer(organizerLoginModel);
  }

  // logout organizer
  @override
  Future<void> logoutOrganizer() async {
    return await authDataSource.logoutOrganizer();
  }
}
