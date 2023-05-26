part of 'organizer_update_bloc.dart';

@freezed
class OrganizerUpdateState with _$OrganizerUpdateState {
  const factory OrganizerUpdateState({
    required bool isLoading,
    required String organizationName,
    required Option<Either<OrganizerFailure, Object>> updateFailureOrSuccessOption,
  }) = _OrganizerUpdateState;

  // initial state
  factory OrganizerUpdateState.initial() => OrganizerUpdateState(
    isLoading: false,
    organizationName: '',
    updateFailureOrSuccessOption: none(),
  );
}
  
