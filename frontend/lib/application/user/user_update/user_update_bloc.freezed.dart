// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String userId) updateUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String userId)? updateUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String userId)? updateUserPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UpdateUserPressed value) updateUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UpdateUserPressed value)? updateUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UpdateUserPressed value)? updateUserPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateEventCopyWith<$Res> {
  factory $UserUpdateEventCopyWith(
          UserUpdateEvent value, $Res Function(UserUpdateEvent) then) =
      _$UserUpdateEventCopyWithImpl<$Res, UserUpdateEvent>;
}

/// @nodoc
class _$UserUpdateEventCopyWithImpl<$Res, $Val extends UserUpdateEvent>
    implements $UserUpdateEventCopyWith<$Res> {
  _$UserUpdateEventCopyWithImpl(this._value, this._then);

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
    extends _$UserUpdateEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'UserUpdateEvent.started()';
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
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String userId) updateUserPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String userId)? updateUserPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String userId)? updateUserPressed,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UpdateUserPressed value) updateUserPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UpdateUserPressed value)? updateUserPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UpdateUserPressed value)? updateUserPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserUpdateEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$UserUpdateEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NameChanged(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'UserUpdateEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String userId) updateUserPressed,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String userId)? updateUserPressed,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String userId)? updateUserPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UpdateUserPressed value) updateUserPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UpdateUserPressed value)? updateUserPressed,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UpdateUserPressed value)? updateUserPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements UserUpdateEvent {
  const factory _NameChanged(final String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$UserUpdateEventCopyWithImpl<$Res, _$_EmailChanged>
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
    return 'UserUpdateEvent.emailChanged(email: $email)';
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
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String userId) updateUserPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String userId)? updateUserPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String userId)? updateUserPressed,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UpdateUserPressed value) updateUserPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UpdateUserPressed value)? updateUserPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UpdateUserPressed value)? updateUserPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements UserUpdateEvent {
  const factory _EmailChanged(final String email) = _$_EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateUserPressedCopyWith<$Res> {
  factory _$$_UpdateUserPressedCopyWith(_$_UpdateUserPressed value,
          $Res Function(_$_UpdateUserPressed) then) =
      __$$_UpdateUserPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_UpdateUserPressedCopyWithImpl<$Res>
    extends _$UserUpdateEventCopyWithImpl<$Res, _$_UpdateUserPressed>
    implements _$$_UpdateUserPressedCopyWith<$Res> {
  __$$_UpdateUserPressedCopyWithImpl(
      _$_UpdateUserPressed _value, $Res Function(_$_UpdateUserPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_UpdateUserPressed(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateUserPressed implements _UpdateUserPressed {
  const _$_UpdateUserPressed(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserUpdateEvent.updateUserPressed(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserPressed &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserPressedCopyWith<_$_UpdateUserPressed> get copyWith =>
      __$$_UpdateUserPressedCopyWithImpl<_$_UpdateUserPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String userId) updateUserPressed,
  }) {
    return updateUserPressed(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String userId)? updateUserPressed,
  }) {
    return updateUserPressed?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String userId)? updateUserPressed,
    required TResult orElse(),
  }) {
    if (updateUserPressed != null) {
      return updateUserPressed(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UpdateUserPressed value) updateUserPressed,
  }) {
    return updateUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UpdateUserPressed value)? updateUserPressed,
  }) {
    return updateUserPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UpdateUserPressed value)? updateUserPressed,
    required TResult orElse(),
  }) {
    if (updateUserPressed != null) {
      return updateUserPressed(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserPressed implements UserUpdateEvent {
  const factory _UpdateUserPressed(final String userId) = _$_UpdateUserPressed;

  String get userId;
  @JsonKey(ignore: true)
  _$$_UpdateUserPressedCopyWith<_$_UpdateUserPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserUpdateState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  Option<Either<UserFailure, Unit>> get updateFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserUpdateStateCopyWith<UserUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateStateCopyWith<$Res> {
  factory $UserUpdateStateCopyWith(
          UserUpdateState value, $Res Function(UserUpdateState) then) =
      _$UserUpdateStateCopyWithImpl<$Res, UserUpdateState>;
  @useResult
  $Res call(
      {bool isLoading,
      String name,
      String email,
      Option<Either<UserFailure, Unit>> updateFailureOrSuccessOption});
}

/// @nodoc
class _$UserUpdateStateCopyWithImpl<$Res, $Val extends UserUpdateState>
    implements $UserUpdateStateCopyWith<$Res> {
  _$UserUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? name = null,
    Object? email = null,
    Object? updateFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      updateFailureOrSuccessOption: null == updateFailureOrSuccessOption
          ? _value.updateFailureOrSuccessOption
          : updateFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserUpdateStateCopyWith<$Res>
    implements $UserUpdateStateCopyWith<$Res> {
  factory _$$_UserUpdateStateCopyWith(
          _$_UserUpdateState value, $Res Function(_$_UserUpdateState) then) =
      __$$_UserUpdateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String name,
      String email,
      Option<Either<UserFailure, Unit>> updateFailureOrSuccessOption});
}

/// @nodoc
class __$$_UserUpdateStateCopyWithImpl<$Res>
    extends _$UserUpdateStateCopyWithImpl<$Res, _$_UserUpdateState>
    implements _$$_UserUpdateStateCopyWith<$Res> {
  __$$_UserUpdateStateCopyWithImpl(
      _$_UserUpdateState _value, $Res Function(_$_UserUpdateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? name = null,
    Object? email = null,
    Object? updateFailureOrSuccessOption = null,
  }) {
    return _then(_$_UserUpdateState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      updateFailureOrSuccessOption: null == updateFailureOrSuccessOption
          ? _value.updateFailureOrSuccessOption
          : updateFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_UserUpdateState implements _UserUpdateState {
  const _$_UserUpdateState(
      {required this.isLoading,
      required this.name,
      required this.email,
      required this.updateFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final String name;
  @override
  final String email;
  @override
  final Option<Either<UserFailure, Unit>> updateFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserUpdateState(isLoading: $isLoading, name: $name, email: $email, updateFailureOrSuccessOption: $updateFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserUpdateState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.updateFailureOrSuccessOption,
                    updateFailureOrSuccessOption) ||
                other.updateFailureOrSuccessOption ==
                    updateFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, name, email, updateFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserUpdateStateCopyWith<_$_UserUpdateState> get copyWith =>
      __$$_UserUpdateStateCopyWithImpl<_$_UserUpdateState>(this, _$identity);
}

abstract class _UserUpdateState implements UserUpdateState {
  const factory _UserUpdateState(
      {required final bool isLoading,
      required final String name,
      required final String email,
      required final Option<Either<UserFailure, Unit>>
          updateFailureOrSuccessOption}) = _$_UserUpdateState;

  @override
  bool get isLoading;
  @override
  String get name;
  @override
  String get email;
  @override
  Option<Either<UserFailure, Unit>> get updateFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_UserUpdateStateCopyWith<_$_UserUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
