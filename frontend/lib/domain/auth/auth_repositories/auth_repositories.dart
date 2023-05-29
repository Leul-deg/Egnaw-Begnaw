import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/auth.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, Object>> createUser(UserCreateModel user);
  Future<Either<AuthFailure, Object>> loginUser(UserLoginModel data);
  Future<void> logoutUser();
  // Following are methods for organizer model
  Future<Either<AuthFailure, Object>> createOrganizer(
      OrganizerCreateModel organizer);
  Future<Either<AuthFailure, Object>> loginOrganizer(OrganizerLoginModel data);
  Future<void> logoutOrganizer();
}
