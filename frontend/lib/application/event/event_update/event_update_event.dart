part of 'event_update_bloc.dart';



class EventUpdateEvent {
  const EventUpdateEvent._();

  const factory EventUpdateEvent.initialized() = _Initialized;
  const factory EventUpdateEvent.startTimeChanged(TimeOfDay startTime) = _StartTimeChanged;
  const factory EventUpdateEvent.endTimeChanged(TimeOfDay endTime) = _EndTimeChanged;
  const factory EventUpdateEvent.placeChanged(String place) = _PlaceChanged;
  const factory EventUpdateEvent.availableSeatsChanged(int availableSeats) = _AvailableSeatsChanged;
  const factory EventUpdateEvent.ticketsSoldChanged(int ticketsSold) = _TicketsSoldChanged;
  const factory EventUpdateEvent.descriptionChanged(String description) = _DescriptionChanged;
  const factory EventUpdateEvent.titleChanged(String title) = _TitleChanged;
  const factory EventUpdateEvent.eventUpdatePressed(String eventId) = _EventUpdatePressed;
  const factory EventUpdateEvent.dateChanged(DateTime date) = _DateChanged;
}

class _Initialized extends EventUpdateEvent {
  const _Initialized() : super._();
}

class _StartTimeChanged extends EventUpdateEvent {
  const _StartTimeChanged(this.startTime) : super._();

  final TimeOfDay startTime;
}

class _EndTimeChanged extends EventUpdateEvent {
  const _EndTimeChanged(this.endTime) : super._();

  final TimeOfDay endTime;
}

class _PlaceChanged extends EventUpdateEvent {
  const _PlaceChanged(this.place) : super._();

  final String place;
}

class _AvailableSeatsChanged extends EventUpdateEvent {
  const _AvailableSeatsChanged(this.availableSeats) : super._();

  final int availableSeats;
}

class _TicketsSoldChanged extends EventUpdateEvent {
  const _TicketsSoldChanged(this.ticketsSold) : super._();

  final int ticketsSold;
}

class _DescriptionChanged extends EventUpdateEvent {
  const _DescriptionChanged(this.description) : super._();

  final String description;
}

class _TitleChanged extends EventUpdateEvent {
  const _TitleChanged(this.title) : super._();

  final String title;
}

class _EventUpdatePressed extends EventUpdateEvent {
  const _EventUpdatePressed(this.eventId) : super._();

  final String eventId;
}

class _DateChanged extends EventUpdateEvent {
  const _DateChanged(this.date) : super._();

  final DateTime date;
}