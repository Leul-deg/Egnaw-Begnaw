part of 'event_create_bloc.dart';

@freezed
class EventCreateState with _$EventCreateState {

  const factory EventCreateState({
    required bool isLoading,
    required OrganizerId? organizerId,
    required StartTime? startTime,
    required EndTime? endTime,
    required Place? place,
    required int? availableSeats,
    required int? ticketsSold,
    required String? description,
    required String? title,
    required Option<Either<EventFailure, Object>> createFailureOrSuccessOption,

}) = _EventCreateState;

factory EventCreateState.initial() => EventCreateState(
    isLoading: false,
    organizerId: null,
    startTime: null,
    endTime: null,
    place: null,
    availableSeats: 0,
    ticketsSold: 0,
    description: "",
    title: "",
    createFailureOrSuccessOption: none(),
  );

}
 
