part of 'login_bloc.dart';

class LoginEvent {
  const LoginEvent._();

  factory LoginEvent.started() {
    return const _Started();
  }

  factory LoginEvent.emailChanged(String emailStr) {
    return _EmailChanged(emailStr);
  }

  factory LoginEvent.passwordChanged(String passwordStr) {
    return _PasswordChanged(passwordStr);
  }

  factory LoginEvent.loginPressed() {
    return const _LoginPressed();
  }

  factory LoginEvent.isOrganizerChanged(bool isOrganizer) {
    return _IsOrganizerChanged(isOrganizer);
  }
}

class _Started extends LoginEvent {
  const _Started() : super._();
}

class _EmailChanged extends LoginEvent {
  const _EmailChanged(this.emailStr) : super._();

  final String emailStr;
}

class _PasswordChanged extends LoginEvent {
  const _PasswordChanged(this.passwordStr) : super._();

  final String passwordStr;
}

class _LoginPressed extends LoginEvent {
  const _LoginPressed() : super._();
}

class _IsOrganizerChanged extends LoginEvent {
  const _IsOrganizerChanged(this.isOrganizer) : super._();

  final bool isOrganizer;
}