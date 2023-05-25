
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/event/models/event_model/event_model.dart';

import '../../../domain/event/event_failure/event_failure.dart';
import '../../../domain/event/event_repository/event_repository.dart';
import '../../../domain/event/models/event_update/event_update_model.dart';

part 'event_update_bloc.freezed.dart';
part 'event_update_event.dart';
part 'event_update_state.dart';

class EventUpdateBloc extends Bloc<EventUpdateEvent, EventUpdateState> {
  final EventRepository _eventRepository;
  final String _eventId;

  EventUpdateBloc(this._eventRepository, this._eventId) : super(EventUpdateState.initial());

  @override
  Stream<EventUpdateState> mapEventToState(EventUpdateEvent event) async* {
    yield* event.map(
      initialized: (_) async* {
        final eventOption = await _eventRepository.getEvent(_eventId);
        yield eventOption.fold(
            (_) => EventUpdateState.initial().copyWith(isLoading: true),
          (event) => state.copyWith(
            isLoading: false,
            organizerId: event.organizerId,
            startTime: DateTime.parse(event.startTime),

            endTime: DateTime.parse(event.endTime),
            place: event.place,
            availableSeats: event.availableSeats,
            ticketsSold: event.ticketsSold,
            description: event.description,
            title: event.title,
          ),
        );
      },
      organizerIdChanged: (e) async* {
        yield state.copyWith(
          organizerId: e.organizerId,
        );
      },
      startTimeChanged: (e) async* {
        yield state.copyWith(
          startTime: e.startTime,
        );
      },
      endTimeChanged: (e) async* {
        yield state.copyWith(
          endTime: e.endTime,
        );
      },
      placeChanged: (e) async* {
        yield state.copyWith(
          place: e.place,
        );
      },
      availableSeatsChanged: (e) async* {
        yield state.copyWith(
          availableSeats: e.availableSeats,
        );
      },
      ticketsSoldChanged: (e) async* {
        yield state.copyWith(
          ticketsSold: e.ticketsSold,
        );
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
          description: e.description,
        );
      },
      titleChanged: (e) async* {
        yield state.copyWith(
          title: e.title,
        );
      },
      eventUpdatePressed: (_) async* {
        yield state.copyWith(
          isLoading: true,
          updateFailureOrSuccessOption: none(),
        );

        final String organizerId = state.organizerId ?? '';
        final DateTime? startTime = state.startTime;
        final DateTime? endTime = state.endTime;
        final String? place = state.place;
        final int? availableSeats = state.availableSeats;
        final int? ticketsSold = state.ticketsSold;
        final String? description = state.description;
        final String? title = state.title;

        if (startTime == null ||
            endTime == null ||
            place == null ||
            availableSeats == null ||
            ticketsSold == null ||
            description == null ||
            title == null) {
          yield state.copyWith(
            isLoading: false,
            updateFailureOrSuccessOption: some(left(const EventFailure.invalidEvent())),
          );
          return;
        }

        final EventUpdateModel event = EventUpdateModel(
          organizerId: organizerId,
          startTime: startTime,
          endTime: endTime,
          place: place,
          availableSeats: availableSeats,
          ticketsSold: ticketsSold,
          description: description,
          title: title,
          eventId: _eventId,
        );

        final Either<EventFailure, EventModel> failureOrSuccess =
            await _eventRepository.updateEvent(_eventId, EventUpdateModel(
              organizerId: event.organizerId,
              startTime: event.startTime,
              endTime: event.endTime,
              place: event.place,
              availableSeats: event.availableSeats,
              ticketsSold: event.ticketsSold,
              description: event.description,
              title: event.title,
              eventId: event.eventId,
            ));

        yield state.copyWith(
          isLoading: false,
          updateFailureOrSuccessOption: optionOf(failureOrSuccess as Either<EventFailure, Unit>?),
        );
      },
    );
  }
}