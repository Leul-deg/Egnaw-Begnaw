part of 'event_create_bloc.dart';

@freezed
class EventCreateState with _$EventCreateState {

  const factory EventCreateState({
    required bool isLoading,
    required String? organizerId,
    required DateTime? startTime,
    required DateTime? endTime,
    required String? place,
    required int? availableSeats,
    required int? ticketsSold,
    required String? description,
    required String? title,
    required Option<Either<EventFailure, Unit>> createFailureOrSuccessOption,

}) = _EventCreateState;

factory EventCreateState.initial() => EventCreateState(
    isLoading: false,
    organizerId: null,
    startTime: null,
    endTime: null,
    place: "",
    availableSeats: 0,
    ticketsSold: 0,
    description: "",
    title: "",
    createFailureOrSuccessOption: none(),
  );

}
 
