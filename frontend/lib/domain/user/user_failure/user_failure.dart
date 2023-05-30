class UserFailure {
  const UserFailure();

  factory UserFailure.unexpectedError() = _UnexpectedError;
  factory UserFailure.insufficientPermission() = _InsufficientPermission;
  factory UserFailure.unableToUpdate() = _UnableToUpdate;
  factory UserFailure.unableToDelete() = _UnableToDelete;
  factory UserFailure.invalidUser() = _InvalidUser;
  factory UserFailure.serverError() = _ServerError;
}

class _UnexpectedError extends UserFailure {
  const _UnexpectedError() : super();
}

class _InsufficientPermission extends UserFailure {
  const _InsufficientPermission() : super();
}

class _UnableToUpdate extends UserFailure {
  const _UnableToUpdate() : super();
}

class _UnableToDelete extends UserFailure {
  const _UnableToDelete() : super();
}

class _InvalidUser extends UserFailure {
  const _InvalidUser() : super();
}

class _ServerError extends UserFailure {
  const _ServerError() : super();
}