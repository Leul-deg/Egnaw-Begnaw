part of 'event_update_bloc.dart';

class EventUpdateState {
  const EventUpdateState({
    required this.isLoading,
    required this.organizerId,
    required this.startTime,
    required this.endTime,
    required this.place,
    required this.availableSeats,
    required this.ticketsSold,
    required this.description,
    required this.title,
    required this.eventId,
    required this.updateFailureOrSuccessOption,
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
  final String eventId;
  final Option<Either<EventFailure, Object>> updateFailureOrSuccessOption;

  EventUpdateState copyWith({
    bool? isLoading,
    String? organizerId,
    String? startTime,
    String? endTime,
    String? place,
    int? availableSeats,
    int? ticketsSold,
    String? description,
    String? title,
    String? eventId,
    Option<Either<EventFailure, Object>>? updateFailureOrSuccessOption,
  }) {
    return EventUpdateState(
      isLoading: isLoading ?? this.isLoading,
      organizerId: organizerId ?? this.organizerId,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      place: place ?? this.place,
      availableSeats: availableSeats ?? this.availableSeats,
      ticketsSold: ticketsSold ?? this.ticketsSold,
      description: description ?? this.description,
      title: title ?? this.title,
      eventId: eventId ?? this.eventId,
      updateFailureOrSuccessOption: updateFailureOrSuccessOption ?? this.updateFailureOrSuccessOption,
    );
  }

  factory EventUpdateState.initial() {
    return EventUpdateState(
      isLoading: false,
      organizerId: null,
      startTime: null,
      endTime: null,
      place: null,
      availableSeats: 0,
      ticketsSold: 0,
      description: '',
      title: '',
      eventId: '',
      updateFailureOrSuccessOption: none(),
    );
  }
}