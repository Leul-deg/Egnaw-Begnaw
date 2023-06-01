part of 'ticket_get_bloc.dart';

abstract class TicketGetEvent {
  const TicketGetEvent._();

  const factory TicketGetEvent.getTicketById(String ticketId) = GetTicketById;
  const factory TicketGetEvent.getAllTickets() = GetAllTickets;
  // get event by user id
  const factory TicketGetEvent.getTicketsByUserId() = GetTicketsByUserId;
}

class GetTicketById extends TicketGetEvent {
  const GetTicketById(this.ticketId) : super._();

  final String ticketId;
}

class GetAllTickets extends TicketGetEvent {
  const GetAllTickets() : super._();
}

class GetTicketsByUserId extends TicketGetEvent {
  const GetTicketsByUserId() : super._();
}
