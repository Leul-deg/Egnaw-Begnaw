import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/domain/auth/auth.dart';
import 'package:frontend/application/auth/login/login_bloc.dart';
import 'package:mockito/mockito.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  group('LoginBloc', () {
    late MockAuthRepository authRepository;
    late LoginBloc loginBloc;

    setUp(() {
      authRepository = MockAuthRepository();
      loginBloc = LoginBloc(authRepository: authRepository);
    });

    tearDown(() {
      loginBloc.close();
    });

  test('initial state is correct', () => expect(loginBloc.state, equals(LoginState.initial())));

    blocTest<LoginBloc, LoginState>(
      'emits [emailAddress updated] when EmailChanged is added',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginEvent.emailChanged('test@example.com')),
      expect: () => [
        LoginState.initial().copyWith(
          emailAddress: 'test@example.com',
          authFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits [password updated] when PasswordChanged is added',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginEvent.passwordChanged('password123')),
      expect: () => [
        LoginState.initial().copyWith(
          password: 'password123',
          authFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits [isOrganizer updated] when IsOrganizerChanged is added',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginEvent.isOrganizerChanged(true)),
      expect: () => [
        LoginState.initial().copyWith(
          isOrganizer: true,
          authFailureOrSuccessOption: none(),
        ),
      ],
    );
  blocTest<LoginBloc, LoginState>(
    'emits [isSubmitting, authFailureOrSuccessOption] when LoginPressed is added and authentication is successful',
    build: () {
      when(authRepository.loginUser(UserLoginModel(email:"test@example.com", password:"password123")))
            .thenAnswer((_) async =>  right(loginBloc.state.authFailureOrSuccessOption));
      return loginBloc;
    },
    act: (bloc) => bloc.add(LoginEvent.loginPressed()),
    expect: () => [
      LoginState.initial().copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: some(right(loginBloc.state.authFailureOrSuccessOption)),
      ),
    ],
  );
  blocTest<LoginBloc, LoginState> (
  'emits [isSubmitting, authFailureOrSuccessOption] when LoginPressed is added and authentication fails',
  build: () {
    when(authRepository.loginUser(UserLoginModel(email:"test@example.com", password:"password123")))
        .thenAnswer((_) async => left( AuthFailure.invalidEmailAndPasswordCombination()));
    return loginBloc;
  },
  act: (bloc) => bloc.add(LoginEvent.loginPressed()),
  expect: () => [
    LoginState.initial().copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: some(left( AuthFailure.invalidEmailAndPasswordCombination())),
    ),
  ],
);
  });
}