part of 'ticket_get_bloc.dart';

abstract class TicketGetEvent {
  const TicketGetEvent();
}

class GetTicketById extends TicketGetEvent {
  final String ticketId;

  const GetTicketById(this.ticketId);
}

class GetAllTickets extends TicketGetEvent {
  const GetAllTickets();
}