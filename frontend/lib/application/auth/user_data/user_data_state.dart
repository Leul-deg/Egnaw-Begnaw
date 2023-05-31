part of 'user_data_bloc.dart';

class UserDataState {
  const UserDataState({
    required this.userData,
  });

  final Map<String, dynamic> userData;

  UserDataState copyWith({
    Map<String, dynamic>? userData,
  }) {
    return UserDataState(
      userData: userData ?? this.userData,
    );
  }

  factory UserDataState.initial() {
    return UserDataState(
      userData: {},
    );
  }

  @override
  List<Object> get props => [userData];
}
