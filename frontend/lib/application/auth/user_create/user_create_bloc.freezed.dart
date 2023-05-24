// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() createUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String emailAddressStr)? emailAddressChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String phoneNumberStr)? phoneNumberChanged,
    TResult? Function()? createUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? createUserPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_CreateUserPressed value) createUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_CreateUserPressed value)? createUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_CreateUserPressed value)? createUserPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreateEventCopyWith<$Res> {
  factory $UserCreateEventCopyWith(
          UserCreateEvent value, $Res Function(UserCreateEvent) then) =
      _$UserCreateEventCopyWithImpl<$Res, UserCreateEvent>;
}

/// @nodoc
class _$UserCreateEventCopyWithImpl<$Res, $Val extends UserCreateEvent>
    implements $UserCreateEventCopyWith<$Res> {
  _$UserCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$UserCreateEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'UserCreateEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() createUserPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String emailAddressStr)? emailAddressChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String phoneNumberStr)? phoneNumberChanged,
    TResult? Function()? createUserPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? createUserPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_CreateUserPressed value) createUserPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_CreateUserPressed value)? createUserPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_CreateUserPressed value)? createUserPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserCreateEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_FirstNameChangedCopyWith<$Res> {
  factory _$$_FirstNameChangedCopyWith(
          _$_FirstNameChanged value, $Res Function(_$_FirstNameChanged) then) =
      __$$_FirstNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstNameStr});
}

/// @nodoc
class __$$_FirstNameChangedCopyWithImpl<$Res>
    extends _$UserCreateEventCopyWithImpl<$Res, _$_FirstNameChanged>
    implements _$$_FirstNameChangedCopyWith<$Res> {
  __$$_FirstNameChangedCopyWithImpl(
      _$_FirstNameChanged _value, $Res Function(_$_FirstNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstNameStr = null,
  }) {
    return _then(_$_FirstNameChanged(
      null == firstNameStr
          ? _value.firstNameStr
          : firstNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirstNameChanged implements _FirstNameChanged {
  const _$_FirstNameChanged(this.firstNameStr);

  @override
  final String firstNameStr;

  @override
  String toString() {
    return 'UserCreateEvent.firstNameChanged(firstNameStr: $firstNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstNameChanged &&
            (identical(other.firstNameStr, firstNameStr) ||
                other.firstNameStr == firstNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirstNameChangedCopyWith<_$_FirstNameChanged> get copyWith =>
      __$$_FirstNameChangedCopyWithImpl<_$_FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() createUserPressed,
  }) {
    return firstNameChanged(firstNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String emailAddressStr)? emailAddressChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String phoneNumberStr)? phoneNumberChanged,
    TResult? Function()? createUserPressed,
  }) {
    return firstNameChanged?.call(firstNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? createUserPressed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_CreateUserPressed value) createUserPressed,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_CreateUserPressed value)? createUserPressed,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_CreateUserPressed value)? createUserPressed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements UserCreateEvent {
  const factory _FirstNameChanged(final String firstNameStr) =
      _$_FirstNameChanged;

  String get firstNameStr;
  @JsonKey(ignore: true)
  _$$_FirstNameChangedCopyWith<_$_FirstNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LastNameChangedCopyWith<$Res> {
  factory _$$_LastNameChangedCopyWith(
          _$_LastNameChanged value, $Res Function(_$_LastNameChanged) then) =
      __$$_LastNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastNameStr});
}

/// @nodoc
class __$$_LastNameChangedCopyWithImpl<$Res>
    extends _$UserCreateEventCopyWithImpl<$Res, _$_LastNameChanged>
    implements _$$_LastNameChangedCopyWith<$Res> {
  __$$_LastNameChangedCopyWithImpl(
      _$_LastNameChanged _value, $Res Function(_$_LastNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastNameStr = null,
  }) {
    return _then(_$_LastNameChanged(
      null == lastNameStr
          ? _value.lastNameStr
          : lastNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LastNameChanged implements _LastNameChanged {
  const _$_LastNameChanged(this.lastNameStr);

  @override
  final String lastNameStr;

  @override
  String toString() {
    return 'UserCreateEvent.lastNameChanged(lastNameStr: $lastNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastNameChanged &&
            (identical(other.lastNameStr, lastNameStr) ||
                other.lastNameStr == lastNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastNameChangedCopyWith<_$_LastNameChanged> get copyWith =>
      __$$_LastNameChangedCopyWithImpl<_$_LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() createUserPressed,
  }) {
    return lastNameChanged(lastNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String emailAddressStr)? emailAddressChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String phoneNumberStr)? phoneNumberChanged,
    TResult? Function()? createUserPressed,
  }) {
    return lastNameChanged?.call(lastNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? createUserPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_CreateUserPressed value) createUserPressed,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_CreateUserPressed value)? createUserPressed,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_CreateUserPressed value)? createUserPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements UserCreateEvent {
  const factory _LastNameChanged(final String lastNameStr) = _$_LastNameChanged;

  String get lastNameStr;
  @JsonKey(ignore: true)
  _$$_LastNameChangedCopyWith<_$_LastNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailAddressChangedCopyWith<$Res> {
  factory _$$_EmailAddressChangedCopyWith(_$_EmailAddressChanged value,
          $Res Function(_$_EmailAddressChanged) then) =
      __$$_EmailAddressChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailAddressStr});
}

/// @nodoc
class __$$_EmailAddressChangedCopyWithImpl<$Res>
    extends _$UserCreateEventCopyWithImpl<$Res, _$_EmailAddressChanged>
    implements _$$_EmailAddressChangedCopyWith<$Res> {
  __$$_EmailAddressChangedCopyWithImpl(_$_EmailAddressChanged _value,
      $Res Function(_$_EmailAddressChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddressStr = null,
  }) {
    return _then(_$_EmailAddressChanged(
      null == emailAddressStr
          ? _value.emailAddressStr
          : emailAddressStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailAddressChanged implements _EmailAddressChanged {
  const _$_EmailAddressChanged(this.emailAddressStr);

  @override
  final String emailAddressStr;

  @override
  String toString() {
    return 'UserCreateEvent.emailAddressChanged(emailAddressStr: $emailAddressStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailAddressChanged &&
            (identical(other.emailAddressStr, emailAddressStr) ||
                other.emailAddressStr == emailAddressStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddressStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailAddressChangedCopyWith<_$_EmailAddressChanged> get copyWith =>
      __$$_EmailAddressChangedCopyWithImpl<_$_EmailAddressChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() createUserPressed,
  }) {
    return emailAddressChanged(emailAddressStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String emailAddressStr)? emailAddressChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String phoneNumberStr)? phoneNumberChanged,
    TResult? Function()? createUserPressed,
  }) {
    return emailAddressChanged?.call(emailAddressStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? createUserPressed,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(emailAddressStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_CreateUserPressed value) createUserPressed,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_CreateUserPressed value)? createUserPressed,
  }) {
    return emailAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_CreateUserPressed value)? createUserPressed,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailAddressChanged implements UserCreateEvent {
  const factory _EmailAddressChanged(final String emailAddressStr) =
      _$_EmailAddressChanged;

  String get emailAddressStr;
  @JsonKey(ignore: true)
  _$$_EmailAddressChangedCopyWith<_$_EmailAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$UserCreateEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$_PasswordChanged(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'UserCreateEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() createUserPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String emailAddressStr)? emailAddressChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String phoneNumberStr)? phoneNumberChanged,
    TResult? Function()? createUserPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? createUserPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_CreateUserPressed value) createUserPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_CreateUserPressed value)? createUserPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_CreateUserPressed value)? createUserPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements UserCreateEvent {
  const factory _PasswordChanged(final String passwordStr) = _$_PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneNumberChangedCopyWith<$Res> {
  factory _$$_PhoneNumberChangedCopyWith(_$_PhoneNumberChanged value,
          $Res Function(_$_PhoneNumberChanged) then) =
      __$$_PhoneNumberChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumberStr});
}

/// @nodoc
class __$$_PhoneNumberChangedCopyWithImpl<$Res>
    extends _$UserCreateEventCopyWithImpl<$Res, _$_PhoneNumberChanged>
    implements _$$_PhoneNumberChangedCopyWith<$Res> {
  __$$_PhoneNumberChangedCopyWithImpl(
      _$_PhoneNumberChanged _value, $Res Function(_$_PhoneNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumberStr = null,
  }) {
    return _then(_$_PhoneNumberChanged(
      null == phoneNumberStr
          ? _value.phoneNumberStr
          : phoneNumberStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumberStr);

  @override
  final String phoneNumberStr;

  @override
  String toString() {
    return 'UserCreateEvent.phoneNumberChanged(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberChanged &&
            (identical(other.phoneNumberStr, phoneNumberStr) ||
                other.phoneNumberStr == phoneNumberStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumberStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberChangedCopyWith<_$_PhoneNumberChanged> get copyWith =>
      __$$_PhoneNumberChangedCopyWithImpl<_$_PhoneNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() createUserPressed,
  }) {
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String emailAddressStr)? emailAddressChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String phoneNumberStr)? phoneNumberChanged,
    TResult? Function()? createUserPressed,
  }) {
    return phoneNumberChanged?.call(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? createUserPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_CreateUserPressed value) createUserPressed,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_CreateUserPressed value)? createUserPressed,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_CreateUserPressed value)? createUserPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements UserCreateEvent {
  const factory _PhoneNumberChanged(final String phoneNumberStr) =
      _$_PhoneNumberChanged;

  String get phoneNumberStr;
  @JsonKey(ignore: true)
  _$$_PhoneNumberChangedCopyWith<_$_PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateUserPressedCopyWith<$Res> {
  factory _$$_CreateUserPressedCopyWith(_$_CreateUserPressed value,
          $Res Function(_$_CreateUserPressed) then) =
      __$$_CreateUserPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateUserPressedCopyWithImpl<$Res>
    extends _$UserCreateEventCopyWithImpl<$Res, _$_CreateUserPressed>
    implements _$$_CreateUserPressedCopyWith<$Res> {
  __$$_CreateUserPressedCopyWithImpl(
      _$_CreateUserPressed _value, $Res Function(_$_CreateUserPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateUserPressed implements _CreateUserPressed {
  const _$_CreateUserPressed();

  @override
  String toString() {
    return 'UserCreateEvent.createUserPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateUserPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() createUserPressed,
  }) {
    return createUserPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String emailAddressStr)? emailAddressChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String phoneNumberStr)? phoneNumberChanged,
    TResult? Function()? createUserPressed,
  }) {
    return createUserPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? createUserPressed,
    required TResult orElse(),
  }) {
    if (createUserPressed != null) {
      return createUserPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_CreateUserPressed value) createUserPressed,
  }) {
    return createUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_CreateUserPressed value)? createUserPressed,
  }) {
    return createUserPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_CreateUserPressed value)? createUserPressed,
    required TResult orElse(),
  }) {
    if (createUserPressed != null) {
      return createUserPressed(this);
    }
    return orElse();
  }
}

abstract class _CreateUserPressed implements UserCreateEvent {
  const factory _CreateUserPressed() = _$_CreateUserPressed;
}

/// @nodoc
mixin _$UserCreateState {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCreateStateCopyWith<UserCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreateStateCopyWith<$Res> {
  factory $UserCreateStateCopyWith(
          UserCreateState value, $Res Function(UserCreateState) then) =
      _$UserCreateStateCopyWithImpl<$Res, UserCreateState>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      EmailAddress emailAddress,
      Password password,
      String phoneNumber,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$UserCreateStateCopyWithImpl<$Res, $Val extends UserCreateState>
    implements $UserCreateStateCopyWith<$Res> {
  _$UserCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCreateStateCopyWith<$Res>
    implements $UserCreateStateCopyWith<$Res> {
  factory _$$_UserCreateStateCopyWith(
          _$_UserCreateState value, $Res Function(_$_UserCreateState) then) =
      __$$_UserCreateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      EmailAddress emailAddress,
      Password password,
      String phoneNumber,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_UserCreateStateCopyWithImpl<$Res>
    extends _$UserCreateStateCopyWithImpl<$Res, _$_UserCreateState>
    implements _$$_UserCreateStateCopyWith<$Res> {
  __$$_UserCreateStateCopyWithImpl(
      _$_UserCreateState _value, $Res Function(_$_UserCreateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_UserCreateState(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_UserCreateState implements _UserCreateState {
  const _$_UserCreateState(
      {required this.firstName,
      required this.lastName,
      required this.emailAddress,
      required this.password,
      required this.phoneNumber,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.authFailureOrSuccessOption});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final String phoneNumber;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserCreateState(firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress, password: $password, phoneNumber: $phoneNumber, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCreateState &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      emailAddress,
      password,
      phoneNumber,
      isSubmitting,
      showErrorMessages,
      authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCreateStateCopyWith<_$_UserCreateState> get copyWith =>
      __$$_UserCreateStateCopyWithImpl<_$_UserCreateState>(this, _$identity);
}

abstract class _UserCreateState implements UserCreateState {
  const factory _UserCreateState(
      {required final String firstName,
      required final String lastName,
      required final EmailAddress emailAddress,
      required final Password password,
      required final String phoneNumber,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_UserCreateState;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  String get phoneNumber;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_UserCreateStateCopyWith<_$_UserCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
