part of 'login_bloc.dart';

class LoginState {
  const LoginState({
    required this.isOrganizer,
    required this.emailAddress,
    required this.password,
    required this.isSubmitting,
    required this.showErrorMessages,
    required this.authFailureOrSuccessOption,
  });

  final bool isOrganizer;
  final String emailAddress;
  final String password;
  final bool isSubmitting;
  final bool showErrorMessages;
  final Option<Either<AuthFailure, Object>> authFailureOrSuccessOption;

  LoginState copyWith({
    bool? isOrganizer,
    String? emailAddress,
    String? password,
    bool? isSubmitting,
    bool? showErrorMessages,
    Option<Either<AuthFailure, Object>>? authFailureOrSuccessOption,
  }) {
    return LoginState(
      isOrganizer: isOrganizer ?? this.isOrganizer,
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      showErrorMessages: showErrorMessages ?? this.showErrorMessages,
      authFailureOrSuccessOption: authFailureOrSuccessOption ?? this.authFailureOrSuccessOption,
    );
  }

  factory LoginState.initial() {
    return LoginState(
      isOrganizer: false,
      emailAddress: '',
      password: '',
      isSubmitting: false,
      showErrorMessages: false,
      authFailureOrSuccessOption: none(),
    );
  }
}