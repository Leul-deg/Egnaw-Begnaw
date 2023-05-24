import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_failure.freezed.dart';

@freezed
class ReviewFailure with _$ReviewFailure {
  const factory ReviewFailure.unexpectedError() = _UnexpectedError;
  const factory ReviewFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory ReviewFailure.unableToUpdate() = _UnableToUpdate;
  const factory ReviewFailure.unableToDelete() = _UnableToDelete;
  const factory ReviewFailure.invalidReview() = _InvalidReview;
  const factory ReviewFailure.serverError() = _ServerError;
  const factory ReviewFailure.unableToGet() = _UnableToGet;
}