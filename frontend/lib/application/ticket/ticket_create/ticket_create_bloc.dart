import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:frontend/domain/ticket/ticket.dart';

import 'package:dartz/dartz.dart';

import 'package:frontend/data/local/local_database/local_storage.dart';

part 'ticket_create_event.dart';
part 'ticket_create_state.dart';
part 'ticket_create_bloc.freezed.dart';

class TicketCreateBloc extends Bloc<TicketCreateEvent, TicketCreateState> {
  final TicketRepository _ticketRepository;
  final LocalDatabase local_storage = LocalDatabase.getInstance;

  TicketCreateBloc(this._ticketRepository)
      : super(TicketCreateState.initial()) {
    on<_TicketCreatePressed>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        createFailureOrSuccessOption: none(),
      ));

      Either<TicketFailure, Object>? failureOrSuccess;

      final userId = await local_storage.getUserId();
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
