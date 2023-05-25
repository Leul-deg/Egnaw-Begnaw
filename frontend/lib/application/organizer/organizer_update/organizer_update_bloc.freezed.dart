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
    required TResult Function(String organizerId) updateOrganizerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String organizationName)? organizationNameChanged,
    TResult? Function(String organizerId)? updateOrganizerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String organizationName)? organizationNameChanged,
    TResult Function(String organizerId)? updateOrganizerPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrganizationNameChanged value)
        organizationNameChanged,
    required TResult Function(_UpdateOrganizerPressed value)
        updateOrganizerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrganizationNameChanged value)? organizationNameChanged,
    TResult? Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrganizationNameChanged value)? organizationNameChanged,
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
    required TResult Function(String organizerId) updateOrganizerPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String organizationName)? organizationNameChanged,
    TResult? Function(String organizerId)? updateOrganizerPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String organizationName)? organizationNameChanged,
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
    TResult? Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrganizationNameChanged value)? organizationNameChanged,
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
    required TResult Function(String organizerId) updateOrganizerPressed,
  }) {
    return organizationNameChanged(organizationName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String organizationName)? organizationNameChanged,
    TResult? Function(String organizerId)? updateOrganizerPressed,
  }) {
    return organizationNameChanged?.call(organizationName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String organizationName)? organizationNameChanged,
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
    TResult? Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
  }) {
    return organizationNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrganizationNameChanged value)? organizationNameChanged,
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
    required TResult Function(String organizerId) updateOrganizerPressed,
  }) {
    return updateOrganizerPressed(organizerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String organizationName)? organizationNameChanged,
    TResult? Function(String organizerId)? updateOrganizerPressed,
  }) {
    return updateOrganizerPressed?.call(organizerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String organizationName)? organizationNameChanged,
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
    TResult? Function(_UpdateOrganizerPressed value)? updateOrganizerPressed,
  }) {
    return updateOrganizerPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrganizationNameChanged value)? organizationNameChanged,
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
  String get organizationName => throw _privateConstructorUsedError;
  Option<Either<OrganizerFailure, Unit>> get updateFailureOrSuccessOption =>
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
      String organizationName,
      Option<Either<OrganizerFailure, Unit>> updateFailureOrSuccessOption});
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
    Object? organizationName = null,
    Object? updateFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      organizationName: null == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String,
      updateFailureOrSuccessOption: null == updateFailureOrSuccessOption
          ? _value.updateFailureOrSuccessOption
          : updateFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OrganizerFailure, Unit>>,
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
      String organizationName,
      Option<Either<OrganizerFailure, Unit>> updateFailureOrSuccessOption});
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
    Object? organizationName = null,
    Object? updateFailureOrSuccessOption = null,
  }) {
    return _then(_$_OrganizerUpdateState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      organizationName: null == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String,
      updateFailureOrSuccessOption: null == updateFailureOrSuccessOption
          ? _value.updateFailureOrSuccessOption
          : updateFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OrganizerFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_OrganizerUpdateState implements _OrganizerUpdateState {
  const _$_OrganizerUpdateState(
      {required this.isLoading,
      required this.organizationName,
      required this.updateFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final String organizationName;
  @override
  final Option<Either<OrganizerFailure, Unit>> updateFailureOrSuccessOption;

  @override
  String toString() {
    return 'OrganizerUpdateState(isLoading: $isLoading, organizationName: $organizationName, updateFailureOrSuccessOption: $updateFailureOrSuccessOption)';
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
            (identical(other.updateFailureOrSuccessOption,
                    updateFailureOrSuccessOption) ||
                other.updateFailureOrSuccessOption ==
                    updateFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, organizationName, updateFailureOrSuccessOption);

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
      required final String organizationName,
      required final Option<Either<OrganizerFailure, Unit>>
          updateFailureOrSuccessOption}) = _$_OrganizerUpdateState;

  @override
  bool get isLoading;
  @override
  String get organizationName;
  @override
  Option<Either<OrganizerFailure, Unit>> get updateFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_OrganizerUpdateStateCopyWith<_$_OrganizerUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
