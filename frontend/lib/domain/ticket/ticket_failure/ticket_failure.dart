class TicketFailure {
  const TicketFailure();

  factory TicketFailure.unexpectedError() = _UnexpectedError;
  factory TicketFailure.insufficientPermission() = _InsufficientPermission;
  factory TicketFailure.unableToUpdate() = _UnableToUpdate;
  factory TicketFailure.unableToDelete() = _UnableToDelete;
  factory TicketFailure.invalidTicket() = _InvalidTicket;
  factory TicketFailure.serverError() = _ServerError;
}

class _UnexpectedError extends TicketFailure {
  const _UnexpectedError() : super();
}

class _InsufficientPermission extends TicketFailure {
  const _InsufficientPermission() : super();
}

class _UnableToUpdate extends TicketFailure {
  const _UnableToUpdate() : super();
}

class _UnableToDelete extends TicketFailure {
  const _UnableToDelete() : super();
}

class _InvalidTicket extends TicketFailure {
  const _InvalidTicket() : super();
}

class _ServerError extends TicketFailure {
  const _ServerError() : super();
}