import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/event/event.dart';
import 'package:flutter/material.dart';
part 'event_update_event.dart';
part 'event_update_state.dart';

class EventUpdateBloc extends Bloc<EventUpdateEvent, EventUpdateState> {
  final EventRepository _eventRepository;

  EventUpdateBloc(this._eventRepository) : super(EventUpdateState.initial()) {
    on<_StartTimeChanged>((event, emit) {
      emit(state.copyWith(
        startTime: event.startTime,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_EndTimeChanged>((event, emit) {
      emit(state.copyWith(
        endTime: event.endTime,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_PlaceChanged>((event, emit) {
      emit(state.copyWith(
        place: event.place,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_AvailableSeatsChanged>((event, emit) {
      emit(state.copyWith(
        availableSeats: event.availableSeats,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_TicketsSoldChanged>((event, emit) {
      emit(state.copyWith(
        ticketsSold: event.ticketsSold,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_DescriptionChanged>((event, emit) {
      emit(state.copyWith(
        description: event.description,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_TitleChanged>((event, emit) {
      emit(state.copyWith(
        title: event.title,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_EventUpdatePressed>((event, emit) async {
      Either<EventFailure, Object> failureOrSuccess;

      print('in the bloc');

      emit(state.copyWith(isLoading: true));

      EventUpdateModel data = EventUpdateModel();

      if (state.startTime != null) {
        data.startTime = state.startTime;
      }

      if (state.endTime != null) {
        data.endTime = state.endTime;
      }

      if (state.place != null) {
        data.place = state.place;
      }

      if (state.availableSeats != null) {
        data.availableSeats = state.availableSeats;
      }

      if (state.ticketsSold != null) {
        data.ticketsSold = state.ticketsSold;
      }

      if (state.description != null) {
        data.description = state.description;
      }

      if (state.title != null) {
        data.title = state.title;
      }

      if (state.eventDate != null) {
        data.eventDate = state.eventDate;
      }

      print('herere with id ${event.eventId}');
      print('here we areeee');
      // print('her is the data ${data.toJson()}');

      print('in the bloc eventId ${event.eventId}');

      failureOrSuccess =
          await _eventRepository.updateEvent(event.eventId, data);

      emit(state.copyWith(
        isLoading: false,
        updateFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
