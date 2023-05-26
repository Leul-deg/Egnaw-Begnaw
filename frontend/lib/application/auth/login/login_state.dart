part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isOrganizer,
    required String emailAddress,
    required String password,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Object>> authFailureOrSuccessOption,
}) = _LoginState;

  factory LoginState.initial() => LoginState(
    isOrganizer: false,
    emailAddress: '',
    password: '',
    isSubmitting: false,
    showErrorMessages: false,
    authFailureOrSuccessOption: none(),
  );
}
