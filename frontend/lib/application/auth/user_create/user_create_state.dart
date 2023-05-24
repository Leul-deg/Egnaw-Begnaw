part of 'user_create_bloc.dart';

@freezed
class UserCreateState with _$UserCreateState {
  const factory UserCreateState({
    required String firstName,
    required String lastName,
    required EmailAddress emailAddress,
    required Password password,
    required String phoneNumber,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _UserCreateState;

  factory UserCreateState.initial() => UserCreateState(
        firstName: '',
        lastName: '',
        emailAddress: EmailAddress(''),
        password: Password(''),
        phoneNumber: '',
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
}
