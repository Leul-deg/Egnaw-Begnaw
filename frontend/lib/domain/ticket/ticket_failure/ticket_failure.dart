class TicketFailure {
  const TicketFailure();

  TResult map<TResult extends Object?>({
    required TResult Function() unexpectedError,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToDelete,
    required TResult Function() invalidTicket,
    required TResult Function() serverError,
  }) {
    if (this is _UnexpectedError) {
      return unexpectedError();
    } else if (this is _InsufficientPermission) {
      return insufficientPermission();
    } else if (this is _UnableToUpdate) {
      return unableToUpdate();
    } else if (this is _UnableToDelete) {
      return unableToDelete();
    } else if (this is _InvalidTicket) {
      return invalidTicket();
    } else if (this is _ServerError) {
      return serverError();
    } else {
      throw UnimplementedError();
    }
  }

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