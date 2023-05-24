part of 'ticket_create_bloc.dart';

@freezed
class TicketCreateEvent with _$TicketCreateEvent {
  const factory TicketCreateEvent.initialized() = _Initialized;
  const factory TicketCreateEvent.ticketCreated() = _TicketCreated;
}