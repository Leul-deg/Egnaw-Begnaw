part of 'user_update_bloc.dart';

class UserUpdateEvent {
  const UserUpdateEvent._();

  const factory UserUpdateEvent.started() = _Started;
  const factory UserUpdateEvent.firstNameChanged(String firstName) = _FirstNameChanged;
  const factory UserUpdateEvent.lastNameChanged(String lastName) = _LastNameChanged;
  const factory UserUpdateEvent.emailChanged(String email) = _EmailChanged;
  const factory UserUpdateEvent.passwordChanged(String password) = _PasswordChanged;
  const factory UserUpdateEvent.updateUserPressed(String userId) = _UpdateUserPressed;
}

class _Started extends UserUpdateEvent {
  const _Started() : super._();
}

class _FirstNameChanged extends UserUpdateEvent {
  const _FirstNameChanged(this.firstName) : super._();

  final String firstName;
}

class _LastNameChanged extends UserUpdateEvent {
  const _LastNameChanged(this.lastName) : super._();

  final String lastName;
}

class _EmailChanged extends UserUpdateEvent {
  const _EmailChanged(this.email) : super._();

  final String email;
}

class _PasswordChanged extends UserUpdateEvent {
  const _PasswordChanged(this.password) : super._();

  final String password;
}

class _UpdateUserPressed extends UserUpdateEvent {
  const _UpdateUserPressed(this.userId) : super._();

  final String userId;
}