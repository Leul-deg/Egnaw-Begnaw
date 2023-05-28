part of 'ticket_create_bloc.dart';

class TicketCreateEvent {
  const TicketCreateEvent._();

  const factory TicketCreateEvent.initialized() = _Initialized;
  const factory TicketCreateEvent.ticketCreatePressed(String eventId) = _TicketCreatePressed;
}

class _Initialized extends TicketCreateEvent {
  const _Initialized() : super._();
}

class _TicketCreatePressed extends TicketCreateEvent {
  const _TicketCreatePressed(this.eventId) : super._();

  final String eventId;
}