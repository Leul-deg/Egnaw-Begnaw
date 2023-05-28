import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/auth.dart';
import 'package:frontend/domain/event/event.dart';

import '../../../data/local/local_database/local_storage.dart' as LocalStorage;

part 'event_create_bloc.freezed.dart';
part 'event_create_event.dart';
part 'event_create_state.dart';

class EventCreateBloc extends Bloc<EventCreateEvent, EventCreateState> {
  final EventRepository _eventRepository;

  EventCreateBloc(this._eventRepository) : super(EventCreateState.initial()) {
    on<_StartTimeChanged>((event, emit) {
      emit(state.copyWith(startTime: event.startTime));
    });

    on<_EndTimeChanged>((event, emit) {
      emit(state.copyWith(endTime: event.endTime));
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

    on<_EventCreatePressed>((event, emit) async {
      Either<EventFailure, Object> failureOrSuccess;

      emit(state.copyWith(isLoading: true));

      final organizerId = await LocalStorage.getUserId();

      // check if the fields are valid
      final startTimeIsValid = state.startTime != null;
      final endTimeIsValid = state.endTime != null;
      final placeIsValid = state.place != null;
      final availableSeatsIsValid = state.availableSeats != null;
      final ticketsSoldIsValid = state.ticketsSold != null;
      final descriptionIsValid = state.description != null;
      final titleIsValid = state.title != null; 

      if (!startTimeIsValid || !endTimeIsValid || !placeIsValid || !availableSeatsIsValid || !ticketsSoldIsValid || !descriptionIsValid || !titleIsValid) {
        failureOrSuccess = left(EventFailure.invalidEvent());
      } 
      
      else {
        failureOrSuccess = await _eventRepository.createEvent(
          EventCreateModel(
              organizerId: organizerId,
              description: state.description!,
              title: state.title!,
              place: state.place!,
              startTime: state.startTime!,
              endTime: state.endTime!,
              availableSeats: state.availableSeats!,
              ticketsSold: state.ticketsSold!));
      }      
      
      emit(state.copyWith(
        isLoading: false,
        createFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });

  }
}
