import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/domain/auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:freezed_annotation/freezed_annotation.dart';



part 'login_bloc.freezed.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;
  final SharedPreferences sharedPrefsService;

  LoginBloc({required this.authRepository, required this.sharedPrefsService})
      : super(LoginState.initial());

  // @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(
      started: (e) async* {},
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      isOrganizerChanged: (e) async* {
        yield state.copyWith(
          isOrganizer: !state.isOrganizer,
        );
      },
      loginPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;

        if (!state.emailAddress.isValid()) {
          failureOrSuccess = left(const AuthFailure.invalidEmail());
        } else if (!state.password.isValid()) {
          failureOrSuccess = left(const AuthFailure.invalidPassword());
        } else {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          // different login methods for organizer and user
          if (!state.isOrganizer) {
            failureOrSuccess = await authRepository.loginUser(
              UserLoginModel(
                email: state.emailAddress,
                password: state.password,
              ),
            );
          } else {
            failureOrSuccess = await authRepository.loginOrganizer(
              OrganizerLoginModel(
                email: state.emailAddress,
                password: state.password,
              ),
            );
          }

          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: some(failureOrSuccess),
          );
        }
      },
    );
  }
}
