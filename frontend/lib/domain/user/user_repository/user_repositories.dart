import 'package:dartz/dartz.dart';
// import 'package:frontend/domain/auth/auth.dart';
import 'package:frontend/domain/user/user.dart';
// import 'package:frontend/domain/user/user.dart';


abstract class UserRepository {
  Future<Either<UserFailure, UserModel>> getUserData(String id);
  Future<Either<UserFailure, UserUpdateModel>> updateUserData(UserModel newData);
   Future<Either<UserFailure, List<UserModel>>> getAllUsers(UserModel allUser);
   Future<Either<UserFailure,UserUpdateModel>> updateUser(String userId, UserUpdateModel newUser);
   Future<Either<UserFailure,Object>>deleteUser(String id);
}
