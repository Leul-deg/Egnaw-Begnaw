part of 'event_create_bloc.dart';

class EventCreateState {
  const EventCreateState({
    required this.isLoading,
    required this.organizerId,
    required this.startTime,
    required this.endTime,
    required this.place,
    required this.availableSeats,
    required this.ticketsSold,
    required this.description,
    required this.title,
    required this.createFailureOrSuccessOption,
  });

  final bool isLoading;
  final String? organizerId;
  final String? startTime;
  final String? endTime;
  final String? place;
  final int? availableSeats;
  final int? ticketsSold;
  final String? description;
  final String? title;
  final Option<Either<EventFailure, Object>> createFailureOrSuccessOption;

  EventCreateState copyWith({
    bool? isLoading,
    String? organizerId,
    String? startTime,
    String? endTime,
    String? place,
    int? availableSeats,
    int? ticketsSold,
    String? description,
    String? title,
    Option<Either<EventFailure, Object>>? createFailureOrSuccessOption,
  }) {
    return EventCreateState(
      isLoading: isLoading ?? this.isLoading,
      organizerId: organizerId ?? this.organizerId,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      place: place ?? this.place,
      availableSeats: availableSeats ?? this.availableSeats,
      ticketsSold: ticketsSold ?? this.ticketsSold,
      description: description ?? this.description,
      title: title ?? this.title,
      createFailureOrSuccessOption: createFailureOrSuccessOption ?? this.createFailureOrSuccessOption,
    );
  }

  factory EventCreateState.initial() {
    return EventCreateState(
      isLoading: false,
      organizerId: null,
      startTime: null,
      endTime: null,
      place: null,
      availableSeats: 0,
      ticketsSold: 0,
      description: '',
      title: '',
      createFailureOrSuccessOption: none(),
    );
  }
}