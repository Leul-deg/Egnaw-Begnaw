class EventFailure {
  const EventFailure();

  TResult map<TResult extends Object?>({
    required TResult Function() unexpectedError,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToDelete,
    required TResult Function() invalidEvent,
    required TResult Function() serverError,
    required TResult Function() unableToGet,
  }) {
    if (this is UnexpectedError) {
      return unexpectedError();
    } else if (this is InsufficientPermission) {
      return insufficientPermission();
    } else if (this is UnableToUpdate) {
      return unableToUpdate();
    } else if (this is UnableToDelete) {
      return unableToDelete();
    } else if (this is InvalidEvent) {
      return invalidEvent();
    } else if (this is ServerError) {
      return serverError();
    } else if (this is UnableToGet) {
      return unableToGet();
    } else {
      throw UnimplementedError();
    }
  }

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