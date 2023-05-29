part of 'ticket_create_bloc.dart';


class TicketCreateState {
  const TicketCreateState({
    required this.isLoading,
    required this.createFailureOrSuccessOption,
  });

  final bool isLoading;
  final Option<Either<TicketFailure, Object>> createFailureOrSuccessOption;

  TicketCreateState copyWith({
    bool? isLoading,
    Option<Either<TicketFailure, Object>>? createFailureOrSuccessOption,
  }) {
    return TicketCreateState(
      isLoading: isLoading ?? this.isLoading,
      createFailureOrSuccessOption: createFailureOrSuccessOption ?? this.createFailureOrSuccessOption,
    );
  }

  factory TicketCreateState.initial() {
    return TicketCreateState(
      isLoading: false,
      createFailureOrSuccessOption: none(),
    );
  }
}