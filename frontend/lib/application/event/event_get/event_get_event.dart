part of 'event_get_bloc.dart';


abstract class EventGetEvent {
  const EventGetEvent._();

  factory EventGetEvent.getEventById(String objectId) {
    return GetEventById(objectId);
  }

  factory EventGetEvent.getAllEvents() {
    return const GetAllEvents();
  }

}

class GetEventById extends EventGetEvent {
  final String objectId;

  const GetEventById(this.objectId) : super._();
}

class GetAllEvents extends EventGetEvent {
  const GetAllEvents() : super._();
}