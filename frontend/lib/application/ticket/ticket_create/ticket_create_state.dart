part of 'ticket_create_bloc.dart';


@freezed
class TicketCreateState with _$TicketCreateState {
  const factory TicketCreateState({
    required bool isLoading,
    required Option<Either<TicketFailure, Object>> createFailureOrSuccessOption,
  }) = _TicketCreateState;


  factory TicketCreateState.initial() => TicketCreateState(
    isLoading: false,
    createFailureOrSuccessOption: none(),
  );
}
