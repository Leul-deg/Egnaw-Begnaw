
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/event/event.dart';

import '../../../data/local/local_database/local_storage.dart';

part 'event_create_bloc.freezed.dart';
part 'event_create_event.dart';
part 'event_create_state.dart';

class EventCreateBloc extends Bloc<EventCreateEvent, EventCreateState> {
  final EventRepository _eventRepository;


  EventCreateBloc(this._eventRepository) : super(EventCreateState.initial());


  @override
  Stream<EventCreateState> mapEventToState(
      EventCreateEvent event,
    ) async* {
      yield* event.map(

            initialized: (e) async* {},
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
            eventCreatePressed: (e) async* {
              yield state.copyWith(
                isLoading: true,
                createFailureOrSuccessOption: none(),
              );

              final OrganizerId organizerId = (await getUserId()) as OrganizerId;
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
                  description == null||
                  title == null) {
                yield state.copyWith(
                  isLoading: false,
                  createFailureOrSuccessOption: some(left(const EventFailure.invalidEvent())),
                );
                return;
              }

              final EventCreateModel event = EventCreateModel(
                organizerId: organizerId,
                startTime: startTime,
                endTime: endTime,
                place: place,
                availableSeats: availableSeats,
                ticketsSold: ticketsSold,
                description: description,
                title: title,
              );

              final Either<EventFailure, Unit> failureOrSuccess =
                  (await _eventRepository.createEvent(event)) as Either<EventFailure, Unit>;

              yield state.copyWith(
                isLoading: false,
                createFailureOrSuccessOption: optionOf(failureOrSuccess),
              );
            },
          );
        }

          }