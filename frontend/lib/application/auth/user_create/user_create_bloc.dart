import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';



part 'user_create_event.dart';
part 'user_create_state.dart';
part 'user_create_bloc.freezed.dart';

class UserCreateBloc extends Bloc<UserCreateEvent, UserCreateState> {
  final AuthRepository _authRepository;
  final SharedPreferences _sharedPreferences;

  UserCreateBloc(
    this._authRepository,
    this._sharedPreferences,
  ) : super(UserCreateState.initial());

  @override
  Stream<UserCreateState> mapEventToState(
    UserCreateEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: e.firstNameStr,
          authFailureOrSuccessOption: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: e.lastNameStr,
          authFailureOrSuccessOption: none(),
        );
      },
      emailAddressChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailAddressStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phoneNumber: e.phoneNumberStr,
          authFailureOrSuccessOption: none(),
        );
      },
      createUserPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;

        final isFirstNameValid = state.firstName.isNotEmpty;
        final isLastNameValid = state.lastName.isNotEmpty;
        final isEmailAddressValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        final isPhoneNumberValid = state.phoneNumber.isNotEmpty;

        if (isFirstNameValid &&
            isLastNameValid &&
            isEmailAddressValid &&
            isPasswordValid &&
            isPhoneNumberValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authRepository.createUser(UserCreateModel(
            firstName: state.firstName,
            lastName: state.lastName,
            email: state.emailAddress,
            password: state.password,
            phoneNumber: state.phoneNumber,
          ));
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
