part of 'event_get_bloc.dart';


class EventGetState {
  final bool isLoading; // Indicates whether the app is currently loading data
  final EventModel event; // The current event being displayed
  final Option<Either<EventFailure, Object>> getFailureOrSuccessOption; // The result of the most recent get event operation
  final bool isSuccess; // Indicates whether the most recent get event operation was successful

  const EventGetState({
    required this.isLoading,
    required this.event,
    required this.getFailureOrSuccessOption,
    required this.isSuccess,
  });

  factory EventGetState.initial() {
    return EventGetState(
      isLoading: false,
      event: null as EventModel,
      getFailureOrSuccessOption: none(),
      isSuccess: false,
    );
  }

  EventGetState copyWith ({
    bool? isLoading,
    EventModel? event,
    Option<Either<EventFailure, Object>>? getFailureOrSuccessOption,
    bool? isSuccess,
  }) {
    return EventGetState(
      isLoading: isLoading ?? this.isLoading,
      event: event ?? this.event,
      getFailureOrSuccessOption: getFailureOrSuccessOption ?? this.getFailureOrSuccessOption,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  factory EventGetState.loading() {
    return EventGetState(
      isLoading: true,
      event: null as EventModel,
      getFailureOrSuccessOption: none(),
      isSuccess: false,
    );
  }

  factory EventGetState.success(EventModel event) {
    return EventGetState(
      isLoading: false,
      event: event,
      getFailureOrSuccessOption: some(right(event)),
      isSuccess: true,
    );
  }

  factory EventGetState.failure(EventFailure failure) {
    return EventGetState(
      isLoading: false,
      event: null as EventModel,
      getFailureOrSuccessOption: some(left(failure)),
      isSuccess: false,
    );
  }
}