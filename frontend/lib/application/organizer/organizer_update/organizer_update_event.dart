part of 'organizer_update_bloc.dart';

class OrganizerUpdateEvent {
  const OrganizerUpdateEvent._();

  const factory OrganizerUpdateEvent.started() = _Started;
  const factory OrganizerUpdateEvent.organizationNameChanged(String organizationName) = _OrganizationNameChanged;
  const factory OrganizerUpdateEvent.emailChanged(String email) = _EmailChanged;
  const factory OrganizerUpdateEvent.passwordChanged(String password) = _PasswordChanged;
  const factory OrganizerUpdateEvent.profileImageChanged(String profileImage) = _ProfileImageChanged;
  const factory OrganizerUpdateEvent.updateOrganizerPressed() = _UpdateOrganizerPressed;
}

class _Started extends OrganizerUpdateEvent {
  const _Started() : super._();
}

class _OrganizationNameChanged extends OrganizerUpdateEvent {
  const _OrganizationNameChanged(this.organizationName) : super._();

  final String organizationName;
}

class _EmailChanged extends OrganizerUpdateEvent {
  const _EmailChanged(this.email) : super._();

  final String email;
}

class _PasswordChanged extends OrganizerUpdateEvent {
  const _PasswordChanged(this.password) : super._();

  final String password;
}

class _ProfileImageChanged extends OrganizerUpdateEvent {
  const _ProfileImageChanged(this.profileImage) : super._();

  final String profileImage;
}

class _UpdateOrganizerPressed extends OrganizerUpdateEvent {
  const _UpdateOrganizerPressed() : super._();
}
