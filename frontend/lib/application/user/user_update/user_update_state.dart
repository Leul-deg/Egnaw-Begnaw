part of 'user_update_bloc.dart';

@freezed
class UserUpdateState with _$UserUpdateState{
  const factory UserUpdateState({
    required bool isLoading,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required Option<Either<UserFailure, Object>> updateFailureOrSuccessOption,
  }) = _UserUpdateState;

  //initial state
  factory UserUpdateState.initial() => UserUpdateState(
    isLoading: false,
    firstName: '',
    lastName: '', 
    email: '',
    password: '',
    updateFailureOrSuccessOption: none(),
  );
}