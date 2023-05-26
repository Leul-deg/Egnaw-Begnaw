
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

  TicketCreateBloc(this._ticketRepository) : super(TicketCreateState.initial());

  @override
  Stream<TicketCreateState> mapEventToState(
    TicketCreateEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {},
      ticketCreatePressed: (e) async* {
        yield state.copyWith(
          isLoading: true,
          createFailureOrSuccessOption: none(),
        );

        final String userId = await getUserId();
        final String eventId = e.eventId;

        if (eventId == null) {
          yield state.copyWith(
            isLoading: false,
            createFailureOrSuccessOption: some(left(const TicketFailure.invalidTicket())),
          );
          return;
        }

        final TicketCreateModel ticket = TicketCreateModel(
          userId: userId,
          eventId: eventId,
        );

        final Either<TicketFailure, Object> failureOrSuccess =
            await _ticketRepository.createTicket(ticket);

        yield state.copyWith(
          isLoading: false,
          createFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
