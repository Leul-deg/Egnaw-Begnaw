import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/auth.dart';
import 'package:frontend/domain/user/user.dart';
import 'package:frontend/domain/organizer/organizer.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, UserModel>> createUser(UserCreateModel user);
  Future<Either<AuthFailure, UserModel>> loginUser(UserLoginModel data);
  Future<void> logoutUser();
  // Following are methods for organizer model
  Future<Either<AuthFailure, OrganizerModel>> createOrganizer(
      OrganizerCreateModel organizer);
  Future<Either<AuthFailure, OrganizerModel>> loginOrganizer(
      OrganizerLoginModel data);
  Future<void> logoutOrganizer();
}
