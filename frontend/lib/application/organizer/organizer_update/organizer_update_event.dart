part of 'organizer_update_bloc.dart';
@freezed
class OrganizerUpdateEvent with _$OrganizerUpdateEvent {
  const factory OrganizerUpdateEvent.started() = _Started;
  const factory OrganizerUpdateEvent.organizationNameChanged(String organizationName) =
      _OrganizationNameChanged;
  const factory OrganizerUpdateEvent.emailChanged(String email) = _EmailChanged;
  const factory OrganizerUpdateEvent.passwordChanged(String password) = _PasswordChanged;
  const factory OrganizerUpdateEvent.updateOrganizerPressed(String organizerId) = _UpdateOrganizerPressed;
}