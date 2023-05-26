part of 'event_update_bloc.dart';

@freezed
class EventUpdateState with _$EventUpdateState {

  const factory EventUpdateState({
    required bool isLoading,
    required OrganizerId? organizerId,
    required StartTime? startTime,
    required EndTime? endTime,
    required Place? place,
    required int? availableSeats,
    required int? ticketsSold,
    required String? description,
    required String? title,
    required String eventId, // <--- new
    required Option<Either<EventFailure, Object>> updateFailureOrSuccessOption,

}) = _EventUpdateState;

factory EventUpdateState.initial() => EventUpdateState(
    isLoading: false,
    organizerId: null,
    startTime: null,
    endTime: null,
    place: null,
    availableSeats: 0,
    ticketsSold: 0,
    description: "",
    title: "",
    eventId: "",
    updateFailureOrSuccessOption: none(),
  );

}