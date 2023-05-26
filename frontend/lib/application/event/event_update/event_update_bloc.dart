
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/event/event.dart';

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
      initialized: (_) async* {},
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

        final OrganizerId organizerId = state.organizerId as OrganizerId;
        final StartTime? startTime = state.startTime;
        final EndTime? endTime = state.endTime;
        final Place? place = state.place;
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

        final Either<EventFailure, Object> failureOrSuccess =
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
          updateFailureOrSuccessOption: optionOf(failureOrSuccess as Either<EventFailure, Object>?),
        );
      },
    );
  }
}