part of 'event_get_bloc.dart';

class EventGetState {
  final bool isLoading; // Indicates whether the app is currently loading data
  final Map<String, dynamic> event;
  final List<dynamic> events; // The list of events
  final bool isError; // Indicates whether an error has occurred
  final bool? isDeleteSuccess;

  const EventGetState({
    required this.isLoading,
    required this.event,
    required this.events,
    required this.isError,
    required this.isDeleteSuccess,
  });

  factory EventGetState.initial() {
    return const EventGetState(
      isLoading: false,
      event: {},
      events: [],
      isError: false,
      isDeleteSuccess: null,
    );
  }

  EventGetState copyWith({
    bool? isLoading,
    Map<String, dynamic>? event,
    List<dynamic>? events,
    bool? isError,
    bool? isDeleteSuccess,
  }) {
    return EventGetState(
      isLoading: isLoading ?? this.isLoading,
      event: event ?? this.event,
      events: events ?? this.events,
      isError: isError ?? this.isError,
      isDeleteSuccess: isDeleteSuccess ?? this.isDeleteSuccess
    );
  }
}
