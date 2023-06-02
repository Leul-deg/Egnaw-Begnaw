import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/auth/user_create/user_create_bloc.dart';
import 'package:frontend/domain/auth/auth.dart';
import 'package:mockito/mockito.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late UserCreateBloc userCreateBloc;
  late AuthRepository authRepository;

  setUp(() {
    authRepository = MockAuthRepository();
    userCreateBloc = UserCreateBloc(authRepository: authRepository);
  });

  tearDown(() {
    userCreateBloc.close();
  });

  group('UserCreateBloc', () {
    final tFirstName = 'John';
    final tLastName = 'Doe';
    final tEmailAddress = 'johndoe@example.com';
    final tPassword = 'password';
    final tOrganizationName = 'Example Organization';

    final tUserCreateModel = UserCreateModel(
      firstName: tFirstName,
      lastName: tLastName,
      email: tEmailAddress,
      password: tPassword,
    );

    final tOrganizerCreateModel = OrganizerCreateModel(
      organizationName: tOrganizationName,
      email: tEmailAddress,
      password: tPassword,
    );

    test('initial state should be UserCreateState.initial()', () {
      expect(userCreateBloc.state, equals(UserCreateState.initial()));
    });

    blocTest<UserCreateBloc, UserCreateState>(
      'emits [state.copyWith(firstName: tFirstName)] when FirstNameChanged is added',
      build: () => userCreateBloc,
      act: (bloc) => bloc.add(UserCreateEvent.firstNameChanged(tUserCreateModel.firstName)),
      expect: () => [
        UserCreateState.initial().copyWith(firstName: tUserCreateModel.firstName),
      ],
    );


    blocTest<UserCreateBloc, UserCreateState>(
      'emits [state.copyWith(lastName: tLastName)] when LastNameChanged is added',
      build: () => userCreateBloc,
      act: (bloc) => bloc.add(UserCreateEvent.lastNameChanged(tUserCreateModel.lastName)),
      expect: () => [
        UserCreateState.initial().copyWith(lastName: tUserCreateModel.lastName),
      ],
    );

    blocTest<UserCreateBloc, UserCreateState>(
      'emits [state.copyWith(emailAddress: tEmailAddress)] when EmailAddressChanged is added',
      build: () => userCreateBloc,
      act: (bloc) => bloc.add(UserCreateEvent.emailAddressChanged( tUserCreateModel.email)),
      expect: () => [
        UserCreateState.initial().copyWith(emailAddress: tUserCreateModel.email),
      ],
    );

    blocTest<UserCreateBloc, UserCreateState>(
      'emits [state.copyWith(password: tPassword)] when PasswordChanged is added',
      build: () => userCreateBloc,
      act: (bloc) => bloc.add(UserCreateEvent.passwordChanged( tUserCreateModel.password)),
      expect: () => [
        UserCreateState.initial().copyWith(password:tUserCreateModel.password),
      ],
    );

    blocTest<UserCreateBloc, UserCreateState>(
      'emits [state.copyWith(isOrganizer: true)] when IsOrganizerChanged is added with true',
      build: () => userCreateBloc,
      act: (bloc) => bloc.add(UserCreateEvent.isOrganizerChanged(true)),
      expect: () => [
        UserCreateState.initial().copyWith(isOrganizer: true),
      ],
    );

    blocTest<UserCreateBloc, UserCreateState>(
      'emits [state.copyWith(isOrganizer: false)] when IsOrganizerChanged is added with false',
      build: () => userCreateBloc,
      act: (bloc) => bloc.add(UserCreateEvent.isOrganizerChanged(false)),
      expect: () => [
        UserCreateState.initial().copyWith(isOrganizer: false),
      ],
    );

    blocTest<UserCreateBloc, UserCreateState>(
      'emits [state.copyWith(organizationName: tOrganizationName)] when OrganizationNameChanged is added',
      build: () => userCreateBloc,
      act: (bloc) => bloc.add(UserCreateEvent.organizationNameChanged(tOrganizationName)),
      expect: () => [
        UserCreateState.initial().copyWith(organizationName: tOrganizerCreateModel.organizationName),
      ],
    );

    blocTest<UserCreateBloc, UserCreateState>(
      'emits [state.copyWith(isSubmitting: true), state.copyWith(isSubmitting: false, authFailureOrSuccessOption: Some(Right(unit)))] when CreateUserPressed is added and user is not an organizer',
      build: () {
        when(authRepository.createUser(tUserCreateModel)).thenAnswer((_) async => right(unit));
        return userCreateBloc;
      },
      act: (bloc) => bloc.add(UserCreateEvent.createUserPressed()),
      expect: () => [
        UserCreateState.initial().copyWith(isSubmitting: true),
        UserCreateState.initial().copyWith(isSubmitting: false, authFailureOrSuccessOption: some(right(unit))),
      ],
    );

    blocTest<UserCreateBloc, UserCreateState>(
      'emits [state.copyWith(isSubmitting: true), state.copyWith(isSubmitting: false, authFailureOrSuccessOption: Some(Left(AuthFailure.invalidEmail())))] when CreateUserPressed is added and user is not an organizer and fields are not valid',
      build: () => userCreateBloc,
      act: (bloc) => bloc.add(UserCreateEvent.createUserPressed()),
      expect: () => [
        UserCreateState.initial().copyWith(isSubmitting: true),
        UserCreateState.initial().copyWith(isSubmitting: false, authFailureOrSuccessOption: some(left(const AuthFailure.invalidEmail()))),
      ],
    );

    blocTest<UserCreateBloc, UserCreateState>(
      'emits [state.copyWith(isSubmitting: true), state.copyWith(isSubmitting: false, authFailureOrSuccessOption: Some(Right(unit)))] when CreateUserPressed is added and user is an organizer',
      build: () {
        when(authRepository.createOrganizer(tOrganizerCreateModel)).thenAnswer((_) async => right(unit));
        return userCreateBloc;
      },
      act: (bloc) {
        bloc.add(UserCreateEvent.isOrganizerChanged(true));
        bloc.add(UserCreateEvent.organizationNameChanged(tOrganizerCreateModel.organizationName));
        bloc.add(UserCreateEvent.emailAddressChanged(tOrganizerCreateModel.email));
        bloc.add(UserCreateEvent.passwordChanged( tOrganizerCreateModel.password));
        bloc.add(UserCreateEvent.createUserPressed());
      },
      expect: () => [
        UserCreateState.initial().copyWith(isOrganizer: true),
        UserCreateState.initial().copyWith(isOrganizer: true, organizationName: tOrganizationName),
        UserCreateState.initial().copyWith(isOrganizer: true, organizationName: tOrganizationName, emailAddress: tEmailAddress),
        UserCreateState.initial().copyWith(isOrganizer: true, organizationName: tOrganizationName, emailAddress: tEmailAddress, password: tPassword),
        UserCreateState.initial().copyWith(isSubmitting: true, isOrganizer: true, organizationName: tOrganizationName, emailAddress: tEmailAddress, password: tPassword),
        UserCreateState.initial().copyWith(isSubmitting: false, isOrganizer: true, organizationName: tOrganizationName, emailAddress: tEmailAddress, password: tPassword, authFailureOrSuccessOption: some(right(unit))),
      ],
    );
  });
}