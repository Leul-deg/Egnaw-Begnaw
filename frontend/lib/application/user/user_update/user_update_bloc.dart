import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dartz/dartz.dart';

import 'package:frontend/domain/user/user.dart';

import 'package:frontend/data/local/local_database/local_storage.dart' as local_storage;

part 'user_update_event.dart';
part 'user_update_state.dart';
part 'user_update_bloc.freezed.dart';

class UserUpdateBloc extends Bloc<UserUpdateEvent, UserUpdateState> {
  final UserRepository userRepository;
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

      final userId = await local_storage.getUserId();

      failureOrSuccess = await userRepository.updateUser(userId, UserUpdateModel(
        firstName: state.firstName,
        lastName: state.lastName,
        email: state.email,
        password: state.password,
      ));

      emit(state.copyWith(
        isLoading: false,
        updateFailureOrSuccessOption: some(failureOrSuccess),
      ));
    });

  }
}
