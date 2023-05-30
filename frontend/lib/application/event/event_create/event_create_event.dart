part of 'event_create_bloc.dart';

class EventCreateEvent {
  const EventCreateEvent._();

  factory EventCreateEvent.initialized() {
    return const _Initialized();
  }

  factory EventCreateEvent.organizerIdChanged(String organizerId) {
    return _OrganizerIdChanged(organizerId);
  }

  factory EventCreateEvent.startTimeChanged(TimeOfDay startTime) {
    return _StartTimeChanged(startTime);
  }

  factory EventCreateEvent.endTimeChanged(TimeOfDay endTime) {
    return _EndTimeChanged(endTime);
  }

  factory EventCreateEvent.placeChanged(String place) {
    return _PlaceChanged(place);
  }

  factory EventCreateEvent.availableSeatsChanged(int availableSeats) {
    return _AvailableSeatsChanged(availableSeats);
  }

  factory EventCreateEvent.ticketsSoldChanged(int ticketsSold) {
    return _TicketsSoldChanged(ticketsSold);
  }

  factory EventCreateEvent.descriptionChanged(String description) {
    return _DescriptionChanged(description);
  }

  factory EventCreateEvent.titleChanged(String title) {
    return _TitleChanged(title);
  }

  factory EventCreateEvent.eventCreatePressed() {
    return const _EventCreatePressed();
  }

  factory EventCreateEvent.eventDateChanged(DateTime eventDate) {
    return _EventDateChanged(eventDate);
  }

  factory EventCreateEvent.revertError() {
    return _RevertError();
  }
}

class _Initialized extends EventCreateEvent {
  const _Initialized() : super._();
}

class _OrganizerIdChanged extends EventCreateEvent {
  const _OrganizerIdChanged(this.organizerId) : super._();

  final String organizerId;
}

class _RevertError extends EventCreateEvent {
  const _RevertError() : super._();
}

class _StartTimeChanged extends EventCreateEvent {
  const _StartTimeChanged(this.startTime) : super._();

  final TimeOfDay startTime;
}

class _EndTimeChanged extends EventCreateEvent {
  const _EndTimeChanged(this.endTime) : super._();

  final TimeOfDay endTime;
}

class _PlaceChanged extends EventCreateEvent {
  const _PlaceChanged(this.place) : super._();

  final String place;
}

class _EventDateChanged extends EventCreateEvent {
  const _EventDateChanged(this.eventDate) : super._();

  final DateTime eventDate;
}

class _AvailableSeatsChanged extends EventCreateEvent {
  const _AvailableSeatsChanged(this.availableSeats) : super._();

  final int availableSeats;
}

class _TicketsSoldChanged extends EventCreateEvent {
  const _TicketsSoldChanged(this.ticketsSold) : super._();

  final int ticketsSold;
}

class _DescriptionChanged extends EventCreateEvent {
  const _DescriptionChanged(this.description) : super._();

  final String description;
}

class _TitleChanged extends EventCreateEvent {
  const _TitleChanged(this.title) : super._();

  final String title;
}

class _EventCreatePressed extends EventCreateEvent {
  const _EventCreatePressed() : super._();
}
