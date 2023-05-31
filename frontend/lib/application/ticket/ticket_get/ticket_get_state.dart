part of 'ticket_get_bloc.dart';

class TicketGetState {
  final bool isLoading; // Indicates whether the app is currently loading data
  final TicketModel ticket; // The current ticket being displayed
  final Option<Either<TicketFailure, Object>> getFailureOrSuccessOption; // The result of the most recent get ticket operation
  final bool isSuccess; // Indicates whether the most recent get ticket operation was successful

  const TicketGetState({
    required this.isLoading,
    required this.ticket,
    required this.getFailureOrSuccessOption,
    required this.isSuccess,
  });

  factory TicketGetState.initial() {
    return TicketGetState(
      isLoading: false,
      ticket: null as TicketModel,
      getFailureOrSuccessOption: none(),
      isSuccess: false,
    );
  }

  TicketGetState copyWith ({
    bool? isLoading,
    TicketModel? ticket,
    Option<Either<TicketFailure, Object>>? getFailureOrSuccessOption,
    bool? isSuccess,
  }) {
    return TicketGetState(
      isLoading: isLoading ?? this.isLoading,
      ticket: ticket ?? this.ticket,
      getFailureOrSuccessOption: getFailureOrSuccessOption ?? this.getFailureOrSuccessOption,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  factory TicketGetState.loading() {
    return TicketGetState(
      isLoading: true,
      ticket: null as TicketModel,
      getFailureOrSuccessOption: none(),
      isSuccess: false,
    );
  }

  factory TicketGetState.success(TicketModel ticket) {
    return TicketGetState(
      isLoading: false,
      ticket: ticket,
      getFailureOrSuccessOption: some(right(ticket)),
      isSuccess: true,
    );
  }

  factory TicketGetState.failure(TicketFailure failure) {
    return TicketGetState(
      isLoading: false,
      ticket: null as TicketModel,
      getFailureOrSuccessOption: some(left(failure)),
      isSuccess: false,
    );
  }
}
