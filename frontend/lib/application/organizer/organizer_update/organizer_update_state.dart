part of 'organizer_update_bloc.dart';


class OrganizerUpdateState {
  const OrganizerUpdateState({
    required this.isLoading,
    required this.organizationName,
    required this.email,
    required this.password,
    required this.updateFailureOrSuccessOption,
  });

  final bool isLoading;
  final String? organizationName;
  final String? email;
  final String? password;
  final Option<Either<OrganizerFailure, Object>> updateFailureOrSuccessOption;

  OrganizerUpdateState copyWith({
    bool? isLoading,
    String? organizationName,
    String? email,
    String? password,
    Option<Either<OrganizerFailure, Object>>? updateFailureOrSuccessOption,
  }) {
    return OrganizerUpdateState(
      isLoading: isLoading ?? this.isLoading,
      organizationName: organizationName ?? this.organizationName,
      email: email ?? this.email,
      password: password ?? this.password,
      updateFailureOrSuccessOption: updateFailureOrSuccessOption ?? this.updateFailureOrSuccessOption,
    );
  }

  // initial state
  factory OrganizerUpdateState.initial() {
    return OrganizerUpdateState(
      isLoading: false,
      organizationName: null,
      email: null,
      password: null,
      updateFailureOrSuccessOption: none(),
    );
  }
}