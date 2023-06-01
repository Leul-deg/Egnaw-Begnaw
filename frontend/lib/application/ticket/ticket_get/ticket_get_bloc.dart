import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/ticket/ticket.dart';

import 'package:shared_preferences/shared_preferences.dart';

part 'ticket_get_event.dart';
part 'ticket_get_state.dart';

class TicketGetBloc extends Bloc<TicketGetEvent, TicketGetState> {
  final TicketRepository _ticketRepository;

  TicketGetBloc(this._ticketRepository) : super(TicketGetState.initial()) {
    on<GetTicketById>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final ticketResult = await _ticketRepository.getTicket(event.ticketId);
      emit(state.copyWith(
        isLoading: false,
        isError: ticketResult.isLeft(),
        ticket: ticketResult.fold(
          (l) => {},
          (r) => r,
        ),
      ));
    });

    on<GetAllTickets>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final ticketsResult = await _ticketRepository.getAllTickets();
      emit(state.copyWith(
        isLoading: false,
        isError: ticketsResult.isLeft(),
        tickets: ticketsResult.fold(
          (l) => [],
          (r) => r,
        ),
      ));
    });

    on<GetTicketsByUserId>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      print('sending request to get tickets by user id');

      // get the userId from prefs
      final prefs = await SharedPreferences.getInstance();
      final userData = json.decode(prefs.getString('userData')!);

      print('userData: $userData');

      final userId = json.decode(userData)['_id'];

      print('userId: $userId');

      final ticketsResult = await _ticketRepository.getTicketsByUserId(userId);
      emit(state.copyWith(
        isLoading: false,
        isError: ticketsResult.isLeft(),
        tickets: ticketsResult.fold(
          (l) => [],
          (r) => r,
        ),
      ));
    });
  }
}
