part of 'user_create_bloc.dart';

@freezed
class UserCreateEvent with _$UserCreateEvent {
  const factory UserCreateEvent.started() = _Started;
  const factory UserCreateEvent.firstNameChanged(String firstNameStr) =
      _FirstNameChanged;
  const factory UserCreateEvent.lastNameChanged(String lastNameStr) =
      _LastNameChanged;
  const factory UserCreateEvent.emailAddressChanged(String emailAddressStr) =
      _EmailAddressChanged;
  const factory UserCreateEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
  const factory UserCreateEvent.phoneNumberChanged(String phoneNumberStr) =
      _PhoneNumberChanged;
  const factory UserCreateEvent.createUserPressed() = _CreateUserPressed;
  const factory UserCreateEvent.isOrganizerChanged(bool isOrganizer) =
      _IsOrganizerChanged;

  const factory UserCreateEvent.organizerNameChanged(String organizerNameStr) =
      _OrganizerNameChanged;
}
