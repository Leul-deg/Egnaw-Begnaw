import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:frontend/domain/ticket/ticket.dart';

import 'package:dartz/dartz.dart';

part 'ticket_create_event.dart';
part 'ticket_create_state.dart';
part 'ticket_create_bloc.freezed.dart';

class TicketCreateBloc extends Bloc<TicketCreateEvent, TicketCreateState> {
  TicketCreateBloc() : super(TicketCreateState.initial());

  @override
  Stream<TicketCreateState> mapEventToState(
    TicketCreateEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        yield state.copyWith(
          isLoading: false,
        );
      },
      ticketCreated: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        yield state.copyWith(
          isLoading: false,
        );
      },
    );
  }
}
