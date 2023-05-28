import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/domain/auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:frontend/data/local/local_database/local_storage.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;

  final LocalDatabase local_storage = LocalDatabase.getInstance;

  LoginBloc({required this.authRepository}) : super(LoginState.initial()) {
    on<_EmailChanged>((event, emit) {
      emit(
        state.copyWith(
          emailAddress: event.emailStr,
          authFailureOrSuccessOption: none(),
        ),
      );
    });

    on<_PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: event.passwordStr,
          authFailureOrSuccessOption: none(),
        ),
      );
    });

    on<_IsOrganizerChanged>((event, emit) {
      emit(
        state.copyWith(
          isOrganizer: event.isOrganizer,
          authFailureOrSuccessOption: none(),
        ),
      );
    });

    on<_LoginPressed>((event, emit) async {
      Either<AuthFailure, Object> failureOrSuccess;

      print(await local_storage.getUser());

      // check if user if isOrganizer
      if (state.isOrganizer) {
        // check if fields are empty
        final isEmailEmpty = state.emailAddress.isEmpty;
        final isPasswordEmpty = state.password.isEmpty;

        if (isEmailEmpty || isPasswordEmpty) {
          failureOrSuccess = left(const AuthFailure.invalidInput());
        } else {
          failureOrSuccess = await authRepository.loginOrganizer(
            OrganizerLoginModel(
              email: state.emailAddress,
              password: state.password,
            ),
          );
        }
      } else {
        // check if fields are empty
        final isEmailEmpty = state.emailAddress.isEmpty;
        final isPasswordEmpty = state.password.isEmpty;

        if (isEmailEmpty || isPasswordEmpty) {
          failureOrSuccess = left(const AuthFailure.invalidInput());
        } else {
          failureOrSuccess = await authRepository.loginUser(
            UserLoginModel(
              email: state.emailAddress,
              password: state.password,
            ),
          );
        }
      }
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: some(failureOrSuccess),
        ),
      );
    });
  }
}
