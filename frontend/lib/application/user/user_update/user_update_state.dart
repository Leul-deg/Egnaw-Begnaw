part of 'user_update_bloc.dart';

@freezed
class UserUpdateState with _$UserUpdateState{
  const factory UserUpdateState({
    required bool isLoading,
    required String name,
    required String email,
    required Option<Either<UserFailure, Unit>> updateFailureOrSuccessOption,
  }) = _UserUpdateState;

  //initial state
  factory UserUpdateState.initial() => UserUpdateState(
    isLoading: false,
    name: '',
    email: '',
    updateFailureOrSuccessOption: none(),
  );
}