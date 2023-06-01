part of 'ticket_get_bloc.dart';

class TicketGetState {
  final bool isLoading; // Indicates whether the app is currently loading data
  final dynamic ticket; // The current ticket being displayed
  final List<dynamic> tickets; // The list of tickets
  final Option<Either<TicketFailure, Object>>
      getFailureOrSuccessOption; // The result of the most recent get ticket operation
  final bool
      isSuccess; // Indicates whether the most recent get ticket operation was successful
  final bool isError; // Indicates whether an error has occurred

  const TicketGetState({
    required this.isLoading,
    required this.ticket,
    required this.tickets,
    required this.isError,
    required this.getFailureOrSuccessOption,
    required this.isSuccess,
  });

  factory TicketGetState.initial() {
    return TicketGetState(
      isLoading: false,
      ticket: {},
      tickets: [],
      getFailureOrSuccessOption: none(),
      isSuccess: false,
      isError: false,
    );
  }

  TicketGetState copyWith({
    bool? isLoading,
    dynamic? ticket,
    List<dynamic>? tickets,
    Option<Either<TicketFailure, Object>>? getFailureOrSuccessOption,
    bool? isSuccess,
    bool? isError,
  }) {
    return TicketGetState(
      isLoading: isLoading ?? this.isLoading,
      ticket: ticket ?? this.ticket,
      tickets: tickets ?? this.tickets,
      getFailureOrSuccessOption:
          getFailureOrSuccessOption ?? this.getFailureOrSuccessOption,
      isSuccess: isSuccess ?? this.isSuccess,
      isError: isError ?? this.isError,
    );
  }
}
