import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure {
  const factory UserFailure.unexpectedError() = _UnexpectedError;
  const factory UserFailure.insufficientPermission() = _InsufficientPermission;
  const factory UserFailure.unableToUpdate() = _UnableToUpdate;
  const factory UserFailure.unableToDelete() = _UnableToDelete;
}
