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
    required this.eventDate,
    required this.createFailureOrSuccessOption,
  });

  final bool isLoading;
  final String? organizerId;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final String? place;
  final int? availableSeats;
  final int? ticketsSold;
  final String? description;
  final String? title;
  final DateTime? eventDate;
  final Option<Either<EventFailure, Object>> createFailureOrSuccessOption;

  EventCreateState copyWith({
    bool? isLoading,
    String? organizerId,
    TimeOfDay? startTime,
    TimeOfDay? endTime,
    String? place,
    int availableSeats = 1,
    int ticketsSold = 1,
    String? description,
    String? title,
    DateTime? eventDate,
    Option<Either<EventFailure, Object>>? createFailureOrSuccessOption,
  }) {
    return EventCreateState(
      isLoading: isLoading ?? this.isLoading,
      organizerId: organizerId ?? this.organizerId,
      startTime: startTime ?? TimeOfDay.now(),
      endTime: endTime ?? TimeOfDay.now(),
      place: place ?? this.place,
      availableSeats: availableSeats,
      ticketsSold: ticketsSold,
      description: description ?? this.description,
      title: title ?? this.title,
      eventDate: eventDate ?? this.eventDate,
      createFailureOrSuccessOption:
          createFailureOrSuccessOption ?? this.createFailureOrSuccessOption,
    );
  }

  factory EventCreateState.initial() {
    return EventCreateState(
      isLoading: false,
      organizerId: '',
      startTime: TimeOfDay.now(),
      endTime: TimeOfDay.now(),
      place: '',
      availableSeats: 1,
      ticketsSold: 1,
      description: '',
      title: '',
      eventDate: DateTime.now(),
      createFailureOrSuccessOption: none(),
    );
  }
}
