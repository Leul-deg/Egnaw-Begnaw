class ReviewFailure {
  const ReviewFailure();

  factory ReviewFailure.unexpectedError() = _UnexpectedError;
  factory ReviewFailure.insufficientPermission() = _InsufficientPermission;
  factory ReviewFailure.unableToUpdate() = _UnableToUpdate;
  factory ReviewFailure.unableToDelete() = _UnableToDelete;
  factory ReviewFailure.invalidReview() = _InvalidReview;
  factory ReviewFailure.serverError() = _ServerError;
  factory ReviewFailure.unableToGet() = _UnableToGet;
}

class _UnexpectedError extends ReviewFailure {
  const _UnexpectedError() : super();
}

class _InsufficientPermission extends ReviewFailure {
  const _InsufficientPermission() : super();
}

class _UnableToUpdate extends ReviewFailure {
  const _UnableToUpdate() : super();
}

class _UnableToDelete extends ReviewFailure {
  const _UnableToDelete() : super();
}

class _InvalidReview extends ReviewFailure {
  const _InvalidReview() : super();
}

class _ServerError extends ReviewFailure {
  const _ServerError() : super();
}

class _UnableToGet extends ReviewFailure {
  const _UnableToGet() : super();
}