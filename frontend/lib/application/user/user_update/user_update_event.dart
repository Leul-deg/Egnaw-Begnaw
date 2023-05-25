part of 'user_update_bloc.dart';

@freezed
class UserUpdateEvent with _$UserUpdateEvent {
  const factory UserUpdateEvent.started() = _Started;
  const factory UserUpdateEvent.nameChanged(String name) = _NameChanged;
  const factory UserUpdateEvent.emailChanged(String email) = _EmailChanged;
  const factory UserUpdateEvent.updateUserPressed(String userId) = _UpdateUserPressed;
} 