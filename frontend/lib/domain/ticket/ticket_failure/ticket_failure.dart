import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_failure.freezed.dart';

@freezed
class TicketFailure with _$TicketFailure {
  const factory TicketFailure.unexpectedError() = _UnexpectedError;
  const factory TicketFailure.insufficientPermission() = _InsufficientPermission;
  const factory TicketFailure.unableToUpdate() = _UnableToUpdate;
  const factory TicketFailure.unableToDelete() = _UnableToDelete;
  const factory TicketFailure.invalidTicket() = _InvalidTicket;
  const factory TicketFailure.serverError() = _ServerError;
  
}