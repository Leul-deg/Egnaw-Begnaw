import 'package:flutter/widgets.dart';

class AuthFailure {
  final String message;

  const AuthFailure(this.message);
  // AuthFailure map(String Function(String) f) => AuthFailure(f(message));
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(InvalidInput value) invalidInput,
  }) {
    if (this is ServerError) {
      return serverError(this as ServerError);
    } else if (this is EmailAlreadyInUse) {
      return emailAlreadyInUse(this as EmailAlreadyInUse);
    } else if (this is InvalidEmailAndPasswordCombination) {
      return invalidEmailAndPasswordCombination(
          this as InvalidEmailAndPasswordCombination);
    } else if (this is SessionExpired) {
      return sessionExpired(this as SessionExpired);
    } else if (this is InvalidEmail) {
      return invalidEmail(this as InvalidEmail);
    } else if (this is InvalidPassword) {
      return invalidPassword(this as InvalidPassword);
    } else if (this is InvalidInput) {
      return invalidInput(this as InvalidInput);
    } else {
      throw UnimplementedError();
    }

  }
    factory AuthFailure.serverError() = ServerError;
    factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
    factory AuthFailure.invalidEmailAndPasswordCombination() =
        InvalidEmailAndPasswordCombination;
    factory AuthFailure.sessionExpired() = SessionExpired;
    factory AuthFailure.invalidEmail() = InvalidEmail;
    factory AuthFailure.invalidPassword() = InvalidPassword;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AuthFailure && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;

}

class ServerError extends AuthFailure {
  const ServerError() : super("Server Error");
}

class EmailAlreadyInUse extends AuthFailure {
  const EmailAlreadyInUse() : super("Email Already In Use");
}

class InvalidEmailAndPasswordCombination extends AuthFailure {
  const InvalidEmailAndPasswordCombination()
      : super("Invalid Email and Password Combination");
}

class SessionExpired extends AuthFailure {
  const SessionExpired() : super("Session Expired");
}

class InvalidEmail extends AuthFailure {
  const InvalidEmail() : super("Invalid Email");
}

class InvalidPassword extends AuthFailure {
  const InvalidPassword() : super("Invalid Password");
}

class InvalidInput extends AuthFailure {
  const InvalidInput() : super("Invalid Input");
}
