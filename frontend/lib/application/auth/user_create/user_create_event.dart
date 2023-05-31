part of 'user_create_bloc.dart';

class UserCreateEvent {
  const UserCreateEvent._();

  factory UserCreateEvent.started() {
    return const _Started();
  }

  factory UserCreateEvent.firstNameChanged(String firstNameStr) {
    return _FirstNameChanged(firstNameStr);
  }

  factory UserCreateEvent.lastNameChanged(String lastNameStr) {
    return _LastNameChanged(lastNameStr);
  }

  factory UserCreateEvent.emailAddressChanged(String emailAddressStr) {
    return _EmailAddressChanged(emailAddressStr);
  }

  factory UserCreateEvent.passwordChanged(String passwordStr) {
    return _PasswordChanged(passwordStr);
  }

  factory UserCreateEvent.createUserPressed() {
    return const _CreateUserPressed();
  }

  factory UserCreateEvent.isOrganizerChanged(bool isOrganizer) {
    return _IsOrganizerChanged(isOrganizer);
  }

  factory UserCreateEvent.organizationNameChanged(String organizationNameStr) {
    return _organizationNameChanged(organizationNameStr);
  }
}

class _Started extends UserCreateEvent {
  const _Started() : super._();
}

class _FirstNameChanged extends UserCreateEvent {
  const _FirstNameChanged(this.firstNameStr) : super._();

  final String firstNameStr;
}

class _LastNameChanged extends UserCreateEvent {
  const _LastNameChanged(this.lastNameStr) : super._();

  final String lastNameStr;
}

class _EmailAddressChanged extends UserCreateEvent {
  const _EmailAddressChanged(this.emailAddressStr) : super._();

  final String emailAddressStr;
}

class _PasswordChanged extends UserCreateEvent {
  const _PasswordChanged(this.passwordStr) : super._();

  final String passwordStr;
}

class _CreateUserPressed extends UserCreateEvent {
  const _CreateUserPressed() : super._();
}

class _IsOrganizerChanged extends UserCreateEvent {
  const _IsOrganizerChanged(this.isOrganizer) : super._();

  final bool isOrganizer;
}

class _organizationNameChanged extends UserCreateEvent {
  const _organizationNameChanged(this.organizationNameStr) : super._();

  final String organizationNameStr;
}