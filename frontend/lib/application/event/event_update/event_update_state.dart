part of 'event_update_bloc.dart';

@freezed
class EventUpdateState with _$EventUpdateState {

  const factory EventUpdateState({
    required bool isLoading,
    required String? organizerId,
    required DateTime? startTime,
    required DateTime? endTime,
    required String? place,
    required int? availableSeats,
    required int? ticketsSold,
    required String? description,
    required String? title,
    required String eventId, // <--- new
    required Option<Either<EventFailure, Unit>> updateFailureOrSuccessOption,

}) = _EventUpdateState;

factory EventUpdateState.initial() => EventUpdateState(
    isLoading: false,
    organizerId: null,
    startTime: null,
    endTime: null,
    place: "",
    availableSeats: 0,
    ticketsSold: 0,
    description: "",
    title: "",
    eventId: "",
    updateFailureOrSuccessOption: none(),
  );

}