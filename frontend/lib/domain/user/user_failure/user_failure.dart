class UserFailure {
  const UserFailure();

  TResult map<TResult extends Object?>({
    required TResult Function() unexpectedError,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToDelete,
    required TResult Function() invalidUser,
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
    } else if (this is _InvalidUser) {
      return invalidUser();
    } else if (this is _ServerError) {
      return serverError();
    } else {
      throw UnimplementedError();
    }
  }

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