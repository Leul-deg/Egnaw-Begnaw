part of 'event_get_bloc.dart';


abstract class EventGetEvent {
  const EventGetEvent();
}

class GetEventById extends EventGetEvent {
  final String objectId;

  const GetEventById(this.objectId);
}

class GetAllEvents extends EventGetEvent {
  const GetAllEvents();
}