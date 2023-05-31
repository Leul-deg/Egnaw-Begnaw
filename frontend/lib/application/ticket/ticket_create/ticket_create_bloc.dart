import 'package:bloc/bloc.dart';

import 'package:frontend/domain/ticket/ticket.dart';

import 'package:dartz/dartz.dart';

import 'package:shared_preferences/shared_preferences.dart';

part 'ticket_create_event.dart';
part 'ticket_create_state.dart';

class TicketCreateBloc extends Bloc<TicketCreateEvent, TicketCreateState> {
  final TicketRepository _ticketRepository;

  TicketCreateBloc(this._ticketRepository)
      : super(TicketCreateState.initial()) {
    on<_TicketCreatePressed>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        createFailureOrSuccessOption: none(),
      ));

      Either<TicketFailure, Object>? failureOrSuccess;

      // get user id from shared preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String userId = prefs.getString('userId')!;
      final eventId = event.eventId;

      failureOrSuccess = await _ticketRepository
          .createTicket(TicketCreateModel(eventId: eventId, userId: userId));

      emit(state.copyWith(
        isLoading: false,
        createFailureOrSuccessOption: some(failureOrSuccess),
      ));
    });
  }
}
