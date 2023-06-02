import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/domain/event/event.dart';

import 'package:frontend/application/event/event_create/event_create_bloc.dart';
import 'package:mockito/mockito.dart';

class MockEventRepository extends Mock implements EventRepository {}

void main() {
  late EventCreateBloc eventCreateBloc;
  late MockEventRepository mockEventRepository;

  setUp(() {
    mockEventRepository = MockEventRepository();
    eventCreateBloc = EventCreateBloc(mockEventRepository);
  });

  test('initial state should be EventCreateState.initial()', () {
    expect(eventCreateBloc.state, equals(EventCreateState.initial()));
  });

  group('EventCreatePressed', () {
    final tEventCreateModel = EventCreateModel(
      organizerId: '1',
      description: 'Test description',
      title: 'Test title',
      place: 'Test place',
      startTime: TimeOfDay.now(),
      endTime: TimeOfDay.now(),
      availableSeats: 10,
      ticketsSold: 0,
      eventDate: DateTime.now().add(Duration(days: 1)),
    );

    test(
      'should emit [isLoading: true, createFailureOrSuccessOption: none()] '
      'and [isLoading: false, createFailureOrSuccessOption: some(left(EventFailure.someFailure()))] '
      'when createEvent returns a left object',
      () async {
        // arrange
        when(mockEventRepository.createEvent(tEventCreateModel))
            .thenAnswer((_) async => left(EventFailure.serverError()));

        // assert later
        final expected = [
          EventCreateState.initial().copyWith(isLoading: true),
          EventCreateState.initial().copyWith(
            isLoading: false,
            createFailureOrSuccessOption: some(left(EventFailure.serverError())),
          ),
        ];
        expectLater(eventCreateBloc.stream, emitsInOrder(expected));

        // act
        eventCreateBloc.add(EventCreateEvent.eventCreatePressed());
      },
    );

    test(
      'should emit [isLoading: true, createFailureOrSuccessOption: none()] '
      'and [isLoading: false, createFailureOrSuccessOption: some(right(Object()))] '
      'when createEvent returns a right object',
      () async {
        // arrange
        when(mockEventRepository.createEvent(tEventCreateModel))
            .thenAnswer((_) async => right(Object()));

        // assert later
        final expected = [
          EventCreateState.initial().copyWith(isLoading: true),
          EventCreateState.initial().copyWith(
            isLoading: false,
            createFailureOrSuccessOption: some(right(Object())),
          ),
        ];
        expectLater(eventCreateBloc.stream, emitsInOrder(expected));

        // act
        eventCreateBloc.add(EventCreateEvent.eventCreatePressed());
      },
    );
  });
}