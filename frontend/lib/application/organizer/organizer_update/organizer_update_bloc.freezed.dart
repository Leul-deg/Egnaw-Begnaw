// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organizer_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrganizerUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String organizationName) organizationNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String organizerId) updateOrganizerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String organizationName)? organizationNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String organizerId)? updateOrganizerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String organizationName)? organizationNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String organizerId)? updateOrganizerPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrganizationNameChanged value)
        organizationNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UpdateOrganizerPressed value)
        updateOrganizerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizerUpdateEventCopyWith<$Res> {
  factory $OrganizerUpdateEventCopyWith(OrganizerUpdateEvent value,
          $Res Function(OrganizerUpdateEvent) then) =
      _$OrganizerUpdateEventCopyWithImpl<$Res, OrganizerUpdateEvent>;
}

/// @nodoc
class _$OrganizerUpdateEventCopyWithImpl<$Res,
        $Val extends OrganizerUpdateEvent>
    implements $OrganizerUpdateEventCopyWith<$Res> {
  _$OrganizerUpdateEventCopyWithImpl(this._value, this._then);

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
    extends _$OrganizerUpdateEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'OrganizerUpdateEvent.started()';
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
    required TResult Function(String organizationName) organizationNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String organizerId) updateOrganizerPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String organizationName)? organizationNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String organizerId)? updateOrganizerPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String organizationName)? organizationNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String organizerId)? updateOrganizerPressed,
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
    required TResult Function(_OrganizationNameChanged value)
        organizationNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UpdateOrganizerPressed value)
        updateOrganizerPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrganizerUpdateEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_OrganizationNameChangedCopyWith<$Res> {
  factory _$$_OrganizationNameChangedCopyWith(_$_OrganizationNameChanged value,
          $Res Function(_$_OrganizationNameChanged) then) =
      __$$_OrganizationNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String organizationName});
}

/// @nodoc
class __$$_OrganizationNameChangedCopyWithImpl<$Res>
    extends _$OrganizerUpdateEventCopyWithImpl<$Res, _$_OrganizationNameChanged>
    implements _$$_OrganizationNameChangedCopyWith<$Res> {
  __$$_OrganizationNameChangedCopyWithImpl(_$_OrganizationNameChanged _value,
      $Res Function(_$_OrganizationNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationName = null,
  }) {
    return _then(_$_OrganizationNameChanged(
      null == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OrganizationNameChanged implements _OrganizationNameChanged {
  const _$_OrganizationNameChanged(this.organizationName);

  @override
  final String organizationName;

  @override
  String toString() {
    return 'OrganizerUpdateEvent.organizationNameChanged(organizationName: $organizationName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrganizationNameChanged &&
            (identical(other.organizationName, organizationName) ||
                other.organizationName == organizationName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, organizationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganizationNameChangedCopyWith<_$_OrganizationNameChanged>
      get copyWith =>
          __$$_OrganizationNameChangedCopyWithImpl<_$_OrganizationNameChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String organizationName) organizationNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String organizerId) updateOrganizerPressed,
  }) {
    return organizationNameChanged(organizationName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String organizationName)? organizationNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String organizerId)? updateOrganizerPressed,
  }) {
    return organizationNameChanged?.call(organizationName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String organizationName)? organizationNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String organizerId)? updateOrganizerPressed,
    required TResult orElse(),
  }) {
    if (organizationNameChanged != null) {
      return organizationNameChanged(organizationName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrganizationNameChanged value)
        organizationNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UpdateOrganizerPressed value)
        updateOrganizerPressed,
  }) {
    return organizationNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
  }) {
    return organizationNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
    required TResult orElse(),
  }) {
    if (organizationNameChanged != null) {
      return organizationNameChanged(this);
    }
    return orElse();
  }
}

abstract class _OrganizationNameChanged implements OrganizerUpdateEvent {
  const factory _OrganizationNameChanged(final String organizationName) =
      _$_OrganizationNameChanged;

  String get organizationName;
  @JsonKey(ignore: true)
  _$$_OrganizationNameChangedCopyWith<_$_OrganizationNameChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$OrganizerUpdateEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailChanged(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'OrganizerUpdateEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String organizationName) organizationNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String organizerId) updateOrganizerPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String organizationName)? organizationNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String organizerId)? updateOrganizerPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String organizationName)? organizationNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String organizerId)? updateOrganizerPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrganizationNameChanged value)
        organizationNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UpdateOrganizerPressed value)
        updateOrganizerPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements OrganizerUpdateEvent {
  const factory _EmailChanged(final String email) = _$_EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$OrganizerUpdateEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'OrganizerUpdateEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String organizationName) organizationNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String organizerId) updateOrganizerPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String organizationName)? organizationNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String organizerId)? updateOrganizerPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String organizationName)? organizationNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String organizerId)? updateOrganizerPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrganizationNameChanged value)
        organizationNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UpdateOrganizerPressed value)
        updateOrganizerPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements OrganizerUpdateEvent {
  const factory _PasswordChanged(final String password) = _$_PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateOrganizerPressedCopyWith<$Res> {
  factory _$$_UpdateOrganizerPressedCopyWith(_$_UpdateOrganizerPressed value,
          $Res Function(_$_UpdateOrganizerPressed) then) =
      __$$_UpdateOrganizerPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String organizerId});
}

/// @nodoc
class __$$_UpdateOrganizerPressedCopyWithImpl<$Res>
    extends _$OrganizerUpdateEventCopyWithImpl<$Res, _$_UpdateOrganizerPressed>
    implements _$$_UpdateOrganizerPressedCopyWith<$Res> {
  __$$_UpdateOrganizerPressedCopyWithImpl(_$_UpdateOrganizerPressed _value,
      $Res Function(_$_UpdateOrganizerPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizerId = null,
  }) {
    return _then(_$_UpdateOrganizerPressed(
      null == organizerId
          ? _value.organizerId
          : organizerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateOrganizerPressed implements _UpdateOrganizerPressed {
  const _$_UpdateOrganizerPressed(this.organizerId);

  @override
  final String organizerId;

  @override
  String toString() {
    return 'OrganizerUpdateEvent.updateOrganizerPressed(organizerId: $organizerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateOrganizerPressed &&
            (identical(other.organizerId, organizerId) ||
                other.organizerId == organizerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, organizerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateOrganizerPressedCopyWith<_$_UpdateOrganizerPressed> get copyWith =>
      __$$_UpdateOrganizerPressedCopyWithImpl<_$_UpdateOrganizerPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String organizationName) organizationNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String organizerId) updateOrganizerPressed,
  }) {
    return updateOrganizerPressed(organizerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String organizationName)? organizationNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String organizerId)? updateOrganizerPressed,
  }) {
    return updateOrganizerPressed?.call(organizerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String organizationName)? organizationNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String organizerId)? updateOrganizerPressed,
    required TResult orElse(),
  }) {
    if (updateOrganizerPressed != null) {
      return updateOrganizerPressed(organizerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrganizationNameChanged value)
        organizationNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UpdateOrganizerPressed value)
        updateOrganizerPressed,
  }) {
    return updateOrganizerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
  }) {
    return updateOrganizerPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
    required TResult orElse(),
  }) {
    if (updateOrganizerPressed != null) {
      return updateOrganizerPressed(this);
    }
    return orElse();
  }
}

abstract class _UpdateOrganizerPressed implements OrganizerUpdateEvent {
  const factory _UpdateOrganizerPressed(final String organizerId) =
      _$_UpdateOrganizerPressed;

  String get organizerId;
  @JsonKey(ignore: true)
  _$$_UpdateOrganizerPressedCopyWith<_$_UpdateOrganizerPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrganizerUpdateState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get organizationName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  Option<Either<OrganizerFailure, Object>> get updateFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrganizerUpdateStateCopyWith<OrganizerUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizerUpdateStateCopyWith<$Res> {
  factory $OrganizerUpdateStateCopyWith(OrganizerUpdateState value,
          $Res Function(OrganizerUpdateState) then) =
      _$OrganizerUpdateStateCopyWithImpl<$Res, OrganizerUpdateState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? organizationName,
      String? email,
      String? password,
      Option<Either<OrganizerFailure, Object>> updateFailureOrSuccessOption});
}

/// @nodoc
class _$OrganizerUpdateStateCopyWithImpl<$Res,
        $Val extends OrganizerUpdateState>
    implements $OrganizerUpdateStateCopyWith<$Res> {
  _$OrganizerUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? organizationName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? updateFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      organizationName: freezed == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      updateFailureOrSuccessOption: null == updateFailureOrSuccessOption
          ? _value.updateFailureOrSuccessOption
          : updateFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OrganizerFailure, Object>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrganizerUpdateStateCopyWith<$Res>
    implements $OrganizerUpdateStateCopyWith<$Res> {
  factory _$$_OrganizerUpdateStateCopyWith(_$_OrganizerUpdateState value,
          $Res Function(_$_OrganizerUpdateState) then) =
      __$$_OrganizerUpdateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? organizationName,
      String? email,
      String? password,
      Option<Either<OrganizerFailure, Object>> updateFailureOrSuccessOption});
}

/// @nodoc
class __$$_OrganizerUpdateStateCopyWithImpl<$Res>
    extends _$OrganizerUpdateStateCopyWithImpl<$Res, _$_OrganizerUpdateState>
    implements _$$_OrganizerUpdateStateCopyWith<$Res> {
  __$$_OrganizerUpdateStateCopyWithImpl(_$_OrganizerUpdateState _value,
      $Res Function(_$_OrganizerUpdateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? organizationName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? updateFailureOrSuccessOption = null,
  }) {
    return _then(_$_OrganizerUpdateState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      organizationName: freezed == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      updateFailureOrSuccessOption: null == updateFailureOrSuccessOption
          ? _value.updateFailureOrSuccessOption
          : updateFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OrganizerFailure, Object>>,
    ));
  }
}

/// @nodoc

class _$_OrganizerUpdateState implements _OrganizerUpdateState {
  const _$_OrganizerUpdateState(
      {required this.isLoading,
      required this.organizationName,
      required this.email,
      required this.password,
      required this.updateFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final String? organizationName;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final Option<Either<OrganizerFailure, Object>> updateFailureOrSuccessOption;

  @override
  String toString() {
    return 'OrganizerUpdateState(isLoading: $isLoading, organizationName: $organizationName, email: $email, password: $password, updateFailureOrSuccessOption: $updateFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrganizerUpdateState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.organizationName, organizationName) ||
                other.organizationName == organizationName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.updateFailureOrSuccessOption,
                    updateFailureOrSuccessOption) ||
                other.updateFailureOrSuccessOption ==
                    updateFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, organizationName,
      email, password, updateFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganizerUpdateStateCopyWith<_$_OrganizerUpdateState> get copyWith =>
      __$$_OrganizerUpdateStateCopyWithImpl<_$_OrganizerUpdateState>(
          this, _$identity);
}

abstract class _OrganizerUpdateState implements OrganizerUpdateState {
  const factory _OrganizerUpdateState(
      {required final bool isLoading,
      required final String? organizationName,
      required final String? email,
      required final String? password,
      required final Option<Either<OrganizerFailure, Object>>
          updateFailureOrSuccessOption}) = _$_OrganizerUpdateState;

  @override
  bool get isLoading;
  @override
  String? get organizationName;
  @override
  String? get email;
  @override
  String? get password;
  @override
  Option<Either<OrganizerFailure, Object>> get updateFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_OrganizerUpdateStateCopyWith<_$_OrganizerUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
