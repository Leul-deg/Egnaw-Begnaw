import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:frontend/domain/event/event.dart';

// import '../../../data/local/local_database/local_storage.dart' as LocalStorage;

part 'event_create_event.dart';
part 'event_create_state.dart';

class EventCreateBloc extends Bloc<EventCreateEvent, EventCreateState> {
  final EventRepository _eventRepository;

  // final local_storage = LocalStorage.LocalDatabase.getInstance;

  EventCreateBloc(this._eventRepository) : super(EventCreateState.initial()) {
    on<_StartTimeChanged>((event, emit) {
      emit(state.copyWith(
        startTime: event.startTime,
      ));
    });

    on<_EndTimeChanged>((event, emit) {
      emit(state.copyWith(endTime: event.endTime));
    });

    on<_RevertError>((event, emit) {
      emit(state.copyWith(createFailureOrSuccessOption: none()));
    });

    on<_PlaceChanged>((event, emit) {
      emit(state.copyWith(place: event.place));
    });

    on<_AvailableSeatsChanged>((event, emit) {
      emit(state.copyWith(availableSeats: event.availableSeats));
    });

    on<_TicketsSoldChanged>((event, emit) {
      emit(state.copyWith(ticketsSold: event.ticketsSold));
    });

    on<_DescriptionChanged>((event, emit) {
      emit(state.copyWith(description: event.description));
    });

    on<_TitleChanged>((event, emit) {
      emit(state.copyWith(title: event.title));
    });

    on<_EventDateChanged>((event, emit) {
      emit(state.copyWith(eventDate: event.eventDate));
    });

    on<_EventCreatePressed>((event, emit) async {
      Either<EventFailure, Object> failureOrSuccess;

      emit(state.copyWith(isLoading: true));

      print('got the event');

      // final organizerId = await local_storage.getUserId();
      final organizerId = '64733886174c2d2f1a643a4d';

      // check if the fields are valid
      final OrganizerIdIsValid = organizerId != null && organizerId.isNotEmpty;
      final startTimeIsValid = state.startTime != null &&
          state.startTime!.hour != null &&
          state.startTime!.minute != null;
      final endTimeIsValid = state.endTime != null &&
          state.endTime!.hour != null &&
          state.endTime!.minute != null;
      final placeIsValid = state.place != null && state.place!.isNotEmpty;
      final availableSeatsIsValid =
          state.availableSeats != null;
      final ticketsSoldIsValid =
          state.ticketsSold != null && state.ticketsSold! >= 0;
      final descriptionIsValid =
          state.description != null && state.description!.isNotEmpty;
      final titleIsValid = state.title != null && state.title!.isNotEmpty;
      final eventDateIsValid =
          state.eventDate != null && state.eventDate!.isAfter(DateTime.now());

      print('almost in if');

      print(EventCreateModel(
              organizerId: organizerId,
              description: state.description!,
              title: state.title!,
              place: state.place!,
              startTime: state.startTime!,
              endTime: state.endTime!,
              availableSeats: state.availableSeats!,
              ticketsSold: state.ticketsSold!,
              eventDate: state.eventDate!)
          .toJson());

      if (false) {
        print('hererereer');
        failureOrSuccess = left(EventFailure.invalidEvent());
      } else {
        print('in else');

        failureOrSuccess = await _eventRepository.createEvent(EventCreateModel(
            organizerId: organizerId,
            description: state.description!,
            title: state.title!,
            place: state.place!,
            startTime: state.startTime,
            endTime: state.endTime,
            availableSeats: state.availableSeats!,
            ticketsSold: state.ticketsSold!,
            eventDate: state.eventDate!));
      }

      emit(state.copyWith(
        isLoading: false,
        createFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
