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

  EventUpdateBloc(this._eventRepository, this._eventId)
      : super(EventUpdateState.initial()) {

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

          emit(state.copyWith(isLoading: true));

          // check if the fields are valid
          final startTimeIsValid = state.startTime != null;
          final endTimeIsValid = state.endTime != null;
          final placeIsValid = state.place != null;
          final availableSeatsIsValid = state.availableSeats != null;
          final ticketsSoldIsValid = state.ticketsSold != null;
          final descriptionIsValid = state.description != null;
          final titleIsValid = state.title != null;

          if (startTimeIsValid &&
              endTimeIsValid &&
              placeIsValid &&
              availableSeatsIsValid &&
              ticketsSoldIsValid &&
              descriptionIsValid &&
              titleIsValid) {
            failureOrSuccess = await _eventRepository.updateEvent(event.eventId,
              EventUpdateModel(startTime: state.startTime!,
              endTime: state.endTime!,
              place: state.place!,
              availableSeats: state.availableSeats!,
              ticketsSold: state.ticketsSold!,
              description: state.description!,
              title: state.title!,)
            );
          }

          else {
            failureOrSuccess = left(const EventFailure.invalidEvent());
          }

          emit(state.copyWith(
            isLoading: false,
            updateFailureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        });
    
      }
}
