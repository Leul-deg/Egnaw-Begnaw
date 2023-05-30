class EventFailure {
  const EventFailure();

  factory EventFailure.unexpectedError() = UnexpectedError;
  factory EventFailure.insufficientPermission() = InsufficientPermission;
  factory EventFailure.unableToUpdate() = UnableToUpdate;
  factory EventFailure.unableToDelete() = UnableToDelete;
  factory EventFailure.invalidEvent() = InvalidEvent;
  factory EventFailure.serverError() = ServerError;
  factory EventFailure.unableToGet() = UnableToGet;
}

class UnexpectedError extends EventFailure {
  const UnexpectedError() : super();
}

class InsufficientPermission extends EventFailure {
  const InsufficientPermission() : super();
}

class UnableToUpdate extends EventFailure {
  const UnableToUpdate() : super();
}

class UnableToDelete extends EventFailure {
  const UnableToDelete() : super();
}

class InvalidEvent extends EventFailure {
  const InvalidEvent() : super();
}

class ServerError extends EventFailure {
  const ServerError() : super();
}

class UnableToGet extends EventFailure {
  const UnableToGet() : super();
}