part of 'organizer_update_bloc.dart';

class OrganizerUpdateState {
  const OrganizerUpdateState(
      {required this.isLoading,
      required this.organizationName,
      required this.email,
      required this.password,
      required this.updateFailureOrSuccessOption,
      required this.profileImage});

  final bool isLoading;
  final String? organizationName;
  final String? email;
  final String? password;
  final String? profileImage;
  final Option<Either<OrganizerFailure, Object>> updateFailureOrSuccessOption;

  OrganizerUpdateState copyWith({
    bool? isLoading,
    String? organizationName,
    String? email,
    String? password,
    String? profileImage,
    Option<Either<OrganizerFailure, Object>>? updateFailureOrSuccessOption,
  }) {
    return OrganizerUpdateState(
      isLoading: isLoading ?? this.isLoading,
      organizationName: organizationName ?? this.organizationName,
      email: email ?? this.email,
      password: password ?? this.password,
      profileImage: profileImage ?? this.profileImage,
      updateFailureOrSuccessOption:
          updateFailureOrSuccessOption ?? this.updateFailureOrSuccessOption,
    );
  }

  // initial state
  factory OrganizerUpdateState.initial() {
    return OrganizerUpdateState(
      isLoading: false,
      organizationName: null,
      email: null,
      password: null,
      profileImage: null,
      updateFailureOrSuccessOption: none(),
    );
  }
}
