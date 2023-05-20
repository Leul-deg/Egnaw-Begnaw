// user auth failurs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  // when server is bad
  const factory AuthFailure.serverError() = ServerError;
  // when email is in use
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  // when user is not found
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  // when session has expired
  const factory AuthFailure.sessionExpired() = SessionExpired;
  // follwing are the failures for organizer model
}
