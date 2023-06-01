import 'package:dartz/dartz.dart';      
import 'package:frontend/domain/user/user.dart';
import 'package:frontend/infrastructure/user/data_sources/user_data_sources.dart';  
class UserRepositoryImp implements UserRepository{
  final UserDataSource userDataSource;
  UserRepositoryImp({
    required this.userDataSource,
  });
  @override
  Future<Either<UserFailure, UserModel>> getUserData(String id) async {
    return await userDataSource.getUserData(id);
  }
  @override 
  Future<Either<UserFailure, UserUpdateModel>> updateUserData(UserModel newData) async {
    return await userDataSource.updateUserData(newData);
  }
  @override
  Future<Either<UserFailure, List<UserModel>>> getAllUsers(UserModel allUser) async {
    return await userDataSource.getAllUsers(allUser);
  }
  @override
  Future<Either<UserFailure,dynamic>> updateUser(String userId, UserUpdateModel newUser) async {
    return await userDataSource.updateUser(userId, newUser);
  }
  @override
  Future<Either<UserFailure,Object>>deleteUser(String id) async {
    return await userDataSource.deleteUser(id);
  }
}