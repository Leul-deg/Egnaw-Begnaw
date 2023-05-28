import 'package:bloc/bloc.dart';

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/auth.dart';

part 'user_create_event.dart';
part 'user_create_state.dart';

class UserCreateBloc extends Bloc<UserCreateEvent, UserCreateState> {
  final AuthRepository authRepository;

  UserCreateBloc({required this.authRepository})
      : super(UserCreateState.initial()) {
    on<_FirstNameChanged>((event, emit) {
      print(event.firstNameStr);
      emit(
        state.copyWith(
          firstName: event.firstNameStr,
          authFailureOrSuccessOption: none(),
        ),
      );
    });

    on<_LastNameChanged>((event, emit) {
      emit(
        state.copyWith(
          lastName: event.lastNameStr,
          authFailureOrSuccessOption: none(),
        ),
      );
    });

    on<_EmailAddressChanged>((event, emit) {
      emit(
        state.copyWith(
          emailAddress: event.emailAddressStr,
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

    on<_CreateUserPressed>((event, emit) async {
      Either<AuthFailure, Object>? failureOrSuccess;
      print(state);

      if (state.isOrganizer) {
        // check if the fields are valid
        final organizerNameValid = state.organizerName.isNotEmpty;
        final isEmailValid = state.emailAddress.isNotEmpty;
        final isPasswordValid = state.password.isNotEmpty;

        if (organizerNameValid && isEmailValid && isPasswordValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );

          failureOrSuccess = await authRepository.createOrganizer(
            OrganizerCreateModel(
              organizationName: state.organizerName,
              email: state.emailAddress,
              password: state.password,
            ),
          );
        } else {
          failureOrSuccess = left(const AuthFailure.invalidEmail());
        }
      } else {
        final isFirstNameValid = state.firstName.isNotEmpty;
        final isLastNameValid = state.lastName.isNotEmpty;
        final isEmailValid = state.emailAddress.isNotEmpty;
        final isPasswordValid = state.password.isNotEmpty;

        if (isFirstNameValid &&
            isLastNameValid &&
            isEmailValid &&
            isPasswordValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );

          print('Submitting now...');

          failureOrSuccess = await authRepository.createUser(UserCreateModel(
            firstName: state.firstName,
            lastName: state.lastName,
            email: state.emailAddress,
            password: state.password,
          ));
        }
      }

      if (failureOrSuccess == null) {
        failureOrSuccess = left(const AuthFailure.invalidEmail());
      }

      print(failureOrSuccess);

      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        ),
      );
    });

    on<_OrganizerNameChanged>((event, emit) {
      emit(
        state.copyWith(
          organizerName: event.organizerNameStr,
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
  }
}
