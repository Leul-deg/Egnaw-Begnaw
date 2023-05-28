part of 'event_create_bloc.dart';

class EventCreateEvent {
  const EventCreateEvent._();

  factory EventCreateEvent.initialized() {
    return const _Initialized();
  }

  factory EventCreateEvent.organizerIdChanged(String organizerId) {
    return _OrganizerIdChanged(organizerId);
  }

  factory EventCreateEvent.startTimeChanged(String startTime) {
    return _StartTimeChanged(startTime);
  }

  factory EventCreateEvent.endTimeChanged(String endTime) {
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
}

class _Initialized extends EventCreateEvent {
  const _Initialized() : super._();
}

class _OrganizerIdChanged extends EventCreateEvent {
  const _OrganizerIdChanged(this.organizerId) : super._();

  final String organizerId;
}

class _StartTimeChanged extends EventCreateEvent {
  const _StartTimeChanged(this.startTime) : super._();

  final String startTime;
}

class _EndTimeChanged extends EventCreateEvent {
  const _EndTimeChanged(this.endTime) : super._();

  final String endTime;
}

class _PlaceChanged extends EventCreateEvent {
  const _PlaceChanged(this.place) : super._();

  final String place;
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

