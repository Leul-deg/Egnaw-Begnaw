part of 'event_create_bloc.dart';

@freezed
class EventCreateEvent with _$EventCreateEvent {
  const factory EventCreateEvent.initialized() = _Initialized;
  const factory EventCreateEvent.organizerIdChanged(String organizerId) = _OrganizerIdChanged;
  const factory EventCreateEvent.startTimeChanged(String startTime) = _StartTimeChanged;
  const factory EventCreateEvent.endTimeChanged(String endTime) = _EndTimeChanged;
  const factory EventCreateEvent.placeChanged(String place) = _PlaceChanged;
  const factory EventCreateEvent.availableSeatsChanged(int availableSeats) = _AvailableSeatsChanged;
  const factory EventCreateEvent.ticketsSoldChanged(int ticketsSold) = _TicketsSoldChanged;
  const factory EventCreateEvent.descriptionChanged(String description) = _DescriptionChanged;
  const factory EventCreateEvent.titleChanged(String title) = _TitleChanged;
  const factory EventCreateEvent.eventCreatePressed() = _EventCreatePressed;
}