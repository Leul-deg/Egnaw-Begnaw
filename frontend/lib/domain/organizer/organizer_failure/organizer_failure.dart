import 'package:freezed_annotation/freezed_annotation.dart';
part 'organizer_failure.freezed.dart';

@freezed
class OrganizerFailure with _$OrganizerFailure {
  const factory OrganizerFailure.unexpectedError() = _UnexpectedError;
  const factory OrganizerFailure.insufficientPermission() = _InsufficientPermission;
  const factory OrganizerFailure.unableToUpdate() = _UnableToUpdate;
  const factory OrganizerFailure.unableToDelete() = _UnableToDelete;
  const factory OrganizerFailure.invalidOrganizer() = _InvalidOrganizer;
  const factory OrganizerFailure.serverError() = _ServerError;


}
