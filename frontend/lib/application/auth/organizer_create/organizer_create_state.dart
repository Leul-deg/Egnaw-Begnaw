part of 'organizer_create_bloc.dart';

@freezed
class OrganizerCreateState with _$OrganizerCreateState {
  const factory OrganizerCreateState({
    required String emailAddress,
    required String password,
    required String organizationName,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _OrganizerCreateState;

  factory OrganizerCreateState.initial() => OrganizerCreateState(
        emailAddress: '',
        password: '',
        organizationName: '',
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
}
