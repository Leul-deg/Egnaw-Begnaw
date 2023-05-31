import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/ticket/ticket.dart';


part 'ticket_get_event.dart';
part 'ticket_get_state.dart';

class TicketGetBloc extends Bloc<TicketGetEvent, TicketGetState> {
  final TicketRepository _ticketRepository;

  TicketGetBloc(this._ticketRepository) : super(TicketGetState.initial()) {
    on<GetTicketById>((event, emit) async {
      emit(TicketGetState.loading());
      final ticketResult = await _ticketRepository.getTicket(event.ticketId);
      emit(ticketResult.fold(
        (failure) => TicketGetState.failure(failure),
        (ticket) => TicketGetState.success(ticket as TicketModel),
      ));
    });

    on<GetAllTickets>((event, emit) async {
      emit(TicketGetState.loading());
      final ticketsResult = await _ticketRepository.getAllTickets();
      emit(ticketsResult.fold(
        (failure) => TicketGetState.failure(failure),
        (tickets) => TicketGetState.success(tickets.first as TicketModel),
      ));
    });
  }
}