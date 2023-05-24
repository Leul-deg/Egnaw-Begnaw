part of 'organizer_create_bloc.dart';

@freezed
class OrganizerCreateEvent with _$OrganizerCreateEvent {
  const factory OrganizerCreateEvent.started() = _Started;
  const factory OrganizerCreateEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory OrganizerCreateEvent.passwordChanged(String passwordStr) = _PasswordChanged;
  const factory OrganizerCreateEvent.organizationNameChanged(String organizationNameStr) = _OrganizationNameChanged;
  const factory OrganizerCreateEvent.createPressed() = _CreatePressed;
}