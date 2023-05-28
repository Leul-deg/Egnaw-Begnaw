part of 'user_update_bloc.dart';

@freezed
class UserUpdateEvent with _$UserUpdateEvent {
  const factory UserUpdateEvent.started() = _Started;
  const factory UserUpdateEvent.firstNameChanged(String firstName) = _FirstNameChanged;
  const factory UserUpdateEvent.lastNameChanged(String lastName) = _LastNameChanged;
  const factory UserUpdateEvent.emailChanged(String email) = _EmailChanged;
  const factory UserUpdateEvent.passwordChanged(String password) = _PasswordChanged;
  const factory UserUpdateEvent.updateUserPressed(String userId) = _UpdateUserPressed;
} 