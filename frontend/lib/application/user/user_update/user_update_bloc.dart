import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dartz/dartz.dart';

import 'package:frontend/domain/user/user.dart';

import 'package:frontend/data/local/local_database/local_storage.dart';

part 'user_update_event.dart';
part 'user_update_state.dart';  
part 'user_update_bloc.freezed.dart';
class UserUpdateBloc extends Bloc<UserUpdateEvent , UserUpdateState>{

  final UserRepository userRepository;
  UserUpdateBloc(this.userRepository) : super(UserUpdateState.initial());

  @override
  Stream<UserUpdateState> mapEventToState(
    UserUpdateEvent event,
  ) async* {
    yield* event.map(
        // started event
        started: (e) async* {},
        // nameChanged event
        nameChanged: (e) async* {
          yield state.copyWith(
            name: e.name,
            updateFailureOrSuccessOption: none(),
          );
        },
        // emailChanged event
        emailChanged: (e) async* {
          yield state.copyWith(
            email: e.email,
            updateFailureOrSuccessOption: none(),
          );
        },
        // updateOrganizerPressed event
        updateUserPressed: (e) async* {
          Either<UserFailure, Unit>? failureOrSuccess;

          if (state.name == '' || state.email == '') {
            failureOrSuccess = left(const UserFailure.invalidUser());
          } else {
            final String? userId = await getUserId();

            if (userId == null) {
              yield state.copyWith(
                isLoading: false,
                updateFailureOrSuccessOption: some(left(const UserFailure.invalidUser())),
              );
              return;
            }

            final UserUpdateModel user = UserUpdateModel(
              firstName: state.name, email: state.email, id: '',
              lastName: '', phoneNumber: '',
            );

            failureOrSuccess = (await userRepository.updateUser(user)) as Either<UserFailure, Unit>?;
          }

          yield state.copyWith(
            isLoading: false,
            updateFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        },
    );
  }
}