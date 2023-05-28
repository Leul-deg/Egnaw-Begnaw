part of 'user_create_bloc.dart';

class UserCreateState {
  const UserCreateState({
    required this.firstName,
    required this.lastName,
    required this.organizerName,
    required this.isOrganizer,
    required this.emailAddress,
    required this.password,
    required this.isSubmitting,
    required this.showErrorMessages,
    required this.authFailureOrSuccessOption,
  });

  final String firstName;
  final String lastName;
  final String organizerName;
  final bool isOrganizer;
  final String emailAddress;
  final String password;
  final bool isSubmitting;
  final bool showErrorMessages;
  final Option<Either<AuthFailure, Object>> authFailureOrSuccessOption;

  UserCreateState copyWith({
    String? firstName,
    String? lastName,
    String? organizerName,
    bool? isOrganizer,
    String? emailAddress,
    String? password,
    bool? isSubmitting,
    bool? showErrorMessages,
    Option<Either<AuthFailure, Object>>? authFailureOrSuccessOption,
  }) {
    return UserCreateState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      organizerName: organizerName ?? this.organizerName,
      isOrganizer: isOrganizer ?? this.isOrganizer,
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      showErrorMessages: showErrorMessages ?? this.showErrorMessages,
      authFailureOrSuccessOption: authFailureOrSuccessOption ?? this.authFailureOrSuccessOption,
    );
  }

  factory UserCreateState.initial() {
    return UserCreateState(
      firstName: '',
      lastName: '',
      isOrganizer: false,
      organizerName: '',
      emailAddress: '',
      password: '',
      isSubmitting: false,
      showErrorMessages: false,
      authFailureOrSuccessOption: none(),
    );
  }
}