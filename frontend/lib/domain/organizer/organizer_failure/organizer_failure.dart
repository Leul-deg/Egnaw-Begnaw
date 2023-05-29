class OrganizerFailure {
  const OrganizerFailure();

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