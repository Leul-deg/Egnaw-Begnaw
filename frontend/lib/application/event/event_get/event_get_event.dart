part of 'event_get_bloc.dart';


abstract class EventGetEvent {
  const EventGetEvent._();

  factory EventGetEvent.getEventById(String objectId) {
    return GetEventById(objectId);
  }

  factory EventGetEvent.getAllEvents() {
    return const GetAllEvents();
  }

  factory EventGetEvent.getEventsByOrganizerId() {
    return GetEventsByOrganizerId();
  }

  factory EventGetEvent.deleteEventById(String eventId) {
    return DeleteEventById(eventId);
  }

}

class GetEventById extends EventGetEvent {
  final String objectId;

  const GetEventById(this.objectId) : super._();
}

class GetAllEvents extends EventGetEvent {
  const GetAllEvents() : super._();
}

class GetEventsByOrganizerId extends EventGetEvent {
 
  const GetEventsByOrganizerId() : super._();
}

class DeleteEventById extends EventGetEvent {
  final String eventId;

  const DeleteEventById(this.eventId) : super._();
}
