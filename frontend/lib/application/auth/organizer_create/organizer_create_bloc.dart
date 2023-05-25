import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'organizer_create_event.dart';
part 'organizer_create_state.dart';
part 'organizer_create_bloc.freezed.dart';

class OrganizerCreateBloc
    extends Bloc<OrganizerCreateEvent, OrganizerCreateState> {
  final AuthRepository authRepository;
  final SharedPreferences sharedPreferences;
  OrganizerCreateBloc(
      {required this.authRepository, required this.sharedPreferences})
      : super(OrganizerCreateState.initial());

  @override
  Stream<OrganizerCreateState> mapEventToState(
    OrganizerCreateEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: e.emailStr,
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.passwordStr,
          authFailureOrSuccessOption: none(),
        );
      },
      organizationNameChanged: (e) async* {
        yield state.copyWith(
          organizationName: e.organizationNameStr,
          authFailureOrSuccessOption: none(),
        );
      },
      createPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;

        if (!state.emailAddress.isNotEmpty) {
          failureOrSuccess = left(const AuthFailure.invalidEmail());
        } else if (!state.password.isNotEmpty) {
          failureOrSuccess = left(const AuthFailure.invalidPassword());
        } else if (state.organizationName.isEmpty) {
          failureOrSuccess = left(const AuthFailure.invalidEmail());
        } else {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await authRepository.createOrganizer(
            OrganizerCreateModel(
              email: state.emailAddress,
              password: state.password,
              organizationName: state.organizationName,
            ),
          );
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
