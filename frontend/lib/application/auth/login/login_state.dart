part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isOrganizer,
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
}) = _LoginState;

  factory LoginState.initial() => LoginState(
    isOrganizer: false,
    emailAddress: EmailAddress(''),
    password: Password(''),
    isSubmitting: false,
    showErrorMessages: false,
    authFailureOrSuccessOption: none(),
  );
}
