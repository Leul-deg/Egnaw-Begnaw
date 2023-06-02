import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/domain/organizer/organizer.dart';
import 'package:frontend/application/organizer/organizer_update/organizer_update_bloc.dart';
import 'package:mockito/mockito.dart';

class MockOrganizerRepository extends Mock implements OrganizerRepository {}

void main() {
  group('OrganizerUpdateBloc', () {
    late OrganizerRepository organizerRepository;
    late OrganizerUpdateBloc organizerUpdateBloc;

    setUp(() {
      organizerRepository = MockOrganizerRepository();
      organizerUpdateBloc = OrganizerUpdateBloc(organizerRepository);
    });

    tearDown(() {
      organizerUpdateBloc.close();
    });

    // create global variables and values to be used in tests
    final OrganizerUpdateModel org = OrganizerUpdateModel(
      organizationName: 'organizationName',
      email: 'org@gmail.com',
      password: 'passed',
      profileImage: 'imageHere',
    );
    final organizerId = 'organizerId';
    test('initial state is correct', () {
      expect(
        organizerUpdateBloc.state,
        OrganizerUpdateState.initial(),
      );
    });

    blocTest<OrganizerUpdateBloc, OrganizerUpdateState>(
      'emits [isLoading: true, updateFailureOrSuccessOption: none()] when UpdateOrganizerPressed is added',
      build: () {
        when(organizerRepository.updateOrganizer(organizerId, org))
            .thenAnswer((_) async => right(OrganizerUpdateState.initial().updateFailureOrSuccessOption));
        return organizerUpdateBloc;
      },
      act: (bloc) => bloc.add(OrganizerUpdateEvent.updateOrganizerPressed()),
      expect: () => [
        OrganizerUpdateState.initial().copyWith(
          isLoading: true,
          updateFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<OrganizerUpdateBloc, OrganizerUpdateState>(
      'emits [isLoading: false, updateFailureOrSuccessOption: some(right(null))] when UpdateOrganizerPressed is added and updateOrganizer succeeds',
      build: () {
        when(organizerRepository.updateOrganizer(organizerId, org))
            .thenAnswer((_) async => right(OrganizerUpdateState.initial().updateFailureOrSuccessOption));
        return organizerUpdateBloc;
      },
      act: (bloc) => bloc.add(OrganizerUpdateEvent.updateOrganizerPressed()),
      expect: () => [
        OrganizerUpdateState.initial().copyWith(
          isLoading: true,
          updateFailureOrSuccessOption: none(),
        ),
        OrganizerUpdateState.initial().copyWith(
          isLoading: false,
          updateFailureOrSuccessOption: some(right(OrganizerUpdateEvent.updateOrganizerPressed())),
        ),
      ],
    );

    blocTest<OrganizerUpdateBloc, OrganizerUpdateState>(
      'emits [isLoading: false, updateFailureOrSuccessOption: some(left(OrganizerFailure.serverError()))] when UpdateOrganizerPressed is added and updateOrganizer fails',
      build: () {
        when(organizerRepository.updateOrganizer(organizerId, org)).thenAnswer(
          (_) async => left(OrganizerFailure.serverError()),
        );
        return organizerUpdateBloc;
      },
      act: (bloc) => bloc.add(OrganizerUpdateEvent.updateOrganizerPressed()),
      expect: () => [
        OrganizerUpdateState.initial().copyWith(
          isLoading: true,
          updateFailureOrSuccessOption: some(left(OrganizerFailure.unableToUpdate()))),
        OrganizerUpdateState.initial().copyWith(
          isLoading: false,
          updateFailureOrSuccessOption:
              some(left(OrganizerFailure.serverError())),
        ),
      ],
    );
  });
}