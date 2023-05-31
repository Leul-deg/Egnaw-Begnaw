import 'dart:convert';

import 'package:bloc/bloc.dart';

import 'package:dartz/dartz.dart';

import 'package:frontend/domain/user/user.dart';

import 'package:frontend/data/local/local_database/local_storage.dart';
import 'package:frontend/presentation/screens/organizer/profile/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_update_event.dart';
part 'user_update_state.dart';

class UserUpdateBloc extends Bloc<UserUpdateEvent, UserUpdateState> {
  final UserRepository userRepository;
  final local_storage = LocalDatabase.getInstance;
  
  UserUpdateBloc(this.userRepository) : super(UserUpdateState.initial()) {

    on<_FirstNameChanged>((event, emit) async {
      emit(state.copyWith(
        firstName: event.firstName,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_LastNameChanged>((event, emit) async {
      emit(state.copyWith(
        lastName: event.lastName,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_EmailChanged>((event, emit) async {
      emit(state.copyWith(
        email: event.email,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_PasswordChanged>((event, emit) async {
      emit(state.copyWith(
        password: event.password,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_UpdateUserPressed>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        updateFailureOrSuccessOption: none(),
      ));

      Either<UserFailure, Object>? failureOrSuccess;

      final prefs = await SharedPreferences.getInstance();
      final userData = json.encode(prefs.getString('userData'));

      final userId = json.decode(userData)['_id'];

      UserUpdateModel data = UserUpdateModel();

      if (state.firstName != null) {
        data.firstName = state.firstName;
      }

      if (state.lastName != null) {
        data.lastName = state.lastName;
      }

      if (state.email != null) {
        data.email = state.email;
      }

      if (state.password != null) {
        data.password = state.password;
      }

      failureOrSuccess = await userRepository.updateUser(userId, data);

      emit(state.copyWith(
        isLoading: false,
        updateFailureOrSuccessOption: some(failureOrSuccess),
      ));
    });

  }
}
