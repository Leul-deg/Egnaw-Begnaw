part of 'ticket_create_bloc.dart';

@freezed
class TicketCreateState with _$TicketCreateState {
  const factory TicketCreateState({
    required bool isLoading,
    required String? userId,
    required String? eventId,
    required Option<Either<TicketFailure, Unit>> createFailureOrSuccessOption,
  }) = _TicketCreateState;

  factory TicketCreateState.initial() => TicketCreateState(
        userId: null,
        eventId: null,
        isLoading: false,
        createFailureOrSuccessOption: none(),
      ); 
}
