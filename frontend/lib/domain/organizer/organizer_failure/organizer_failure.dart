class OrganizerFailure {
  const OrganizerFailure();

  // define the map
  R map<R>({
    required R Function() unexpectedError,
    required R Function() insufficientPermission,
    required R Function() unableToUpdate,
    required R Function() unableToDelete,
    required R Function() invalidOrganizer,
    required R Function() serverError,
  }) {
    // return the function
    if (this is UnexpectedError) {
      return unexpectedError();
    } else if (this is InsufficientPermission) {
      return insufficientPermission();
    } else if (this is UnableToUpdate) {
      return unableToUpdate();
    } else if (this is UnableToDelete) {
      return unableToDelete();
    } else if (this is InvalidOrganizer) {
      return invalidOrganizer();
    } else if (this is ServerError) {
      return serverError();
    } else {
      throw Exception();
    }
  }

  factory OrganizerFailure.unexpectedError() = UnexpectedError;
  factory OrganizerFailure.insufficientPermission() = InsufficientPermission;
  factory OrganizerFailure.unableToUpdate() = UnableToUpdate;
  factory OrganizerFailure.unableToDelete() = UnableToDelete;
  factory OrganizerFailure.invalidOrganizer() = InvalidOrganizer;
  factory OrganizerFailure.serverError() = ServerError;
}

class UnexpectedError extends OrganizerFailure {
  const UnexpectedError() : super();
}

class InsufficientPermission extends OrganizerFailure {
  const InsufficientPermission() : super();
}

class UnableToUpdate extends OrganizerFailure {
  const UnableToUpdate() : super();
}

class UnableToDelete extends OrganizerFailure {
  const UnableToDelete() : super();
}

class InvalidOrganizer extends OrganizerFailure {
  const InvalidOrganizer() : super();
}

class ServerError extends OrganizerFailure {
  const ServerError() : super();
}