part of 'user_data_bloc.dart';

class UserDataEvent {
  const UserDataEvent._();

  factory UserDataEvent.getUserData() {
    return _GetUserData();
  }
}

class _GetUserData extends UserDataEvent {
  const _GetUserData() : super._();

}