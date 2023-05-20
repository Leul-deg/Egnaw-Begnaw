import 'package:dartz/dartz.dart';
// import 'package:frontend/domain/auth/auth.dart';
import 'package:frontend/domain/user/user.dart';
// import 'package:frontend/domain/user/user.dart';


abstract class UserRepository {
  Future<Either<UserFailure, UserModel>> getUserData();
  Future<Either<UserFailure, UserUpdateModel>> updateUserData(UserModel newData);
   Future<Either<UserFailure, List<UserModel>>> getAllUsers(UserModel allUser);
   Future<Either<UserFailure,UserUpdateModel>> updateUser(UserUpdateModel newUser);
   Future<Either<UserFailure,Unit>>deleteUser(String id);
}
