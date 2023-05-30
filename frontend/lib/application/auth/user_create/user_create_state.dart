part of 'user_create_bloc.dart';

class UserCreateState {
  const UserCreateState({
    required this.firstName,
    required this.lastName,
    required this.organizationName,
    required this.isOrganizer,
    required this.emailAddress,
    required this.password,
    required this.isSubmitting,
    required this.showErrorMessages,
    required this.authFailureOrSuccessOption,
  });

  final String firstName;
  final String lastName;
  final String organizationName;
  final bool isOrganizer;
  final String emailAddress;
  final String password;
  final bool isSubmitting;
  final bool showErrorMessages;
  final Option<Either<AuthFailure, Object>> authFailureOrSuccessOption;

  UserCreateState copyWith({
    String? firstName,
    String? lastName,
    String? organizationName,
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
      organizationName: organizationName ?? this.organizationName,
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
      organizationName: '',
      emailAddress: '',
      password: '',
      isSubmitting: false,
      showErrorMessages: false,
      authFailureOrSuccessOption: none(),
    );
  }
}