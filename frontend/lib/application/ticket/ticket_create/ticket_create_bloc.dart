import 'dart:convert';

import 'package:bloc/bloc.dart';

import 'package:frontend/domain/ticket/ticket.dart';

import 'package:dartz/dartz.dart';

import 'package:shared_preferences/shared_preferences.dart';

part 'ticket_create_event.dart';
part 'ticket_create_state.dart';

class TicketCreateBloc extends Bloc<TicketCreateEvent, TicketCreateState> {
  final TicketRepository _ticketDataSources;

  TicketCreateBloc(this._ticketDataSources)
      : super(TicketCreateState.initial()) {
    on<_TicketCreatePressed>((event, emit) async {
      print('button pressed');
      emit(state.copyWith(
        isLoading: true,
        createFailureOrSuccessOption: none(),
      ));

      Either<TicketFailure, Object>? failureOrSuccess;

      // get user id from shared preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var userData = json.decode(prefs.getString('userData')!);

      print('here is the user data');
      print(json.decode(userData));
      print('here is the ID');
      print(json.decode(userData)['_id']);

      String userId = json.decode(userData)['_id'];

      print('got userId');
      print(userId);

      failureOrSuccess = await _ticketDataSources.createTicket(
          TicketCreateModel(eventId: event.eventId, userId: userId));

      emit(state.copyWith(
        isLoading: false,
        createFailureOrSuccessOption: some(failureOrSuccess),
      ));
    });
  }
}
