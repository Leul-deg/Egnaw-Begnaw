import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_failure.freezed.dart';

@freezed
class EventFailure with _$EventFailure {
  const factory EventFailure.unexpectedError() = _UnexpectedError;
  const factory EventFailure.insufficientPermission() = _InsufficientPermission;
  const factory EventFailure.unableToUpdate() = _UnableToUpdate;
  const factory EventFailure.unableToDelete() = _UnableToDelete;
  const factory EventFailure.invalidEvent() = _InvalidEvent;
  const factory EventFailure.serverError() = _ServerError;
  const factory EventFailure.unableToGet() = _UnableToGet;
}