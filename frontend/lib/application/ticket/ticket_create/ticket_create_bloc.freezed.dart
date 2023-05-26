// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String eventId) ticketCreatePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String eventId)? ticketCreatePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String eventId)? ticketCreatePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TicketCreatePressed value) ticketCreatePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TicketCreatePressed value)? ticketCreatePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TicketCreatePressed value)? ticketCreatePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCreateEventCopyWith<$Res> {
  factory $TicketCreateEventCopyWith(
          TicketCreateEvent value, $Res Function(TicketCreateEvent) then) =
      _$TicketCreateEventCopyWithImpl<$Res, TicketCreateEvent>;
}

/// @nodoc
class _$TicketCreateEventCopyWithImpl<$Res, $Val extends TicketCreateEvent>
    implements $TicketCreateEventCopyWith<$Res> {
  _$TicketCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$TicketCreateEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'TicketCreateEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String eventId) ticketCreatePressed,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String eventId)? ticketCreatePressed,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String eventId)? ticketCreatePressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TicketCreatePressed value) ticketCreatePressed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TicketCreatePressed value)? ticketCreatePressed,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TicketCreatePressed value)? ticketCreatePressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TicketCreateEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$$_TicketCreatePressedCopyWith<$Res> {
  factory _$$_TicketCreatePressedCopyWith(_$_TicketCreatePressed value,
          $Res Function(_$_TicketCreatePressed) then) =
      __$$_TicketCreatePressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$_TicketCreatePressedCopyWithImpl<$Res>
    extends _$TicketCreateEventCopyWithImpl<$Res, _$_TicketCreatePressed>
    implements _$$_TicketCreatePressedCopyWith<$Res> {
  __$$_TicketCreatePressedCopyWithImpl(_$_TicketCreatePressed _value,
      $Res Function(_$_TicketCreatePressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$_TicketCreatePressed(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TicketCreatePressed implements _TicketCreatePressed {
  const _$_TicketCreatePressed(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'TicketCreateEvent.ticketCreatePressed(eventId: $eventId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketCreatePressed &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketCreatePressedCopyWith<_$_TicketCreatePressed> get copyWith =>
      __$$_TicketCreatePressedCopyWithImpl<_$_TicketCreatePressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String eventId) ticketCreatePressed,
  }) {
    return ticketCreatePressed(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String eventId)? ticketCreatePressed,
  }) {
    return ticketCreatePressed?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String eventId)? ticketCreatePressed,
    required TResult orElse(),
  }) {
    if (ticketCreatePressed != null) {
      return ticketCreatePressed(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TicketCreatePressed value) ticketCreatePressed,
  }) {
    return ticketCreatePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TicketCreatePressed value)? ticketCreatePressed,
  }) {
    return ticketCreatePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TicketCreatePressed value)? ticketCreatePressed,
    required TResult orElse(),
  }) {
    if (ticketCreatePressed != null) {
      return ticketCreatePressed(this);
    }
    return orElse();
  }
}

abstract class _TicketCreatePressed implements TicketCreateEvent {
  const factory _TicketCreatePressed(final String eventId) =
      _$_TicketCreatePressed;

  String get eventId;
  @JsonKey(ignore: true)
  _$$_TicketCreatePressedCopyWith<_$_TicketCreatePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketCreateState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get eventId => throw _privateConstructorUsedError;
  Option<Either<TicketFailure, Object>> get createFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketCreateStateCopyWith<TicketCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCreateStateCopyWith<$Res> {
  factory $TicketCreateStateCopyWith(
          TicketCreateState value, $Res Function(TicketCreateState) then) =
      _$TicketCreateStateCopyWithImpl<$Res, TicketCreateState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? userId,
      String? eventId,
      Option<Either<TicketFailure, Object>> createFailureOrSuccessOption});
}

/// @nodoc
class _$TicketCreateStateCopyWithImpl<$Res, $Val extends TicketCreateState>
    implements $TicketCreateStateCopyWith<$Res> {
  _$TicketCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userId = freezed,
    Object? eventId = freezed,
    Object? createFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      createFailureOrSuccessOption: null == createFailureOrSuccessOption
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TicketFailure, Object>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketCreateStateCopyWith<$Res>
    implements $TicketCreateStateCopyWith<$Res> {
  factory _$$_TicketCreateStateCopyWith(_$_TicketCreateState value,
          $Res Function(_$_TicketCreateState) then) =
      __$$_TicketCreateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? userId,
      String? eventId,
      Option<Either<TicketFailure, Object>> createFailureOrSuccessOption});
}

/// @nodoc
class __$$_TicketCreateStateCopyWithImpl<$Res>
    extends _$TicketCreateStateCopyWithImpl<$Res, _$_TicketCreateState>
    implements _$$_TicketCreateStateCopyWith<$Res> {
  __$$_TicketCreateStateCopyWithImpl(
      _$_TicketCreateState _value, $Res Function(_$_TicketCreateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userId = freezed,
    Object? eventId = freezed,
    Object? createFailureOrSuccessOption = null,
  }) {
    return _then(_$_TicketCreateState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      createFailureOrSuccessOption: null == createFailureOrSuccessOption
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TicketFailure, Object>>,
    ));
  }
}

/// @nodoc

class _$_TicketCreateState implements _TicketCreateState {
  const _$_TicketCreateState(
      {required this.isLoading,
      required this.userId,
      required this.eventId,
      required this.createFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final String? userId;
  @override
  final String? eventId;
  @override
  final Option<Either<TicketFailure, Object>> createFailureOrSuccessOption;

  @override
  String toString() {
    return 'TicketCreateState(isLoading: $isLoading, userId: $userId, eventId: $eventId, createFailureOrSuccessOption: $createFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketCreateState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.createFailureOrSuccessOption,
                    createFailureOrSuccessOption) ||
                other.createFailureOrSuccessOption ==
                    createFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, userId, eventId, createFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketCreateStateCopyWith<_$_TicketCreateState> get copyWith =>
      __$$_TicketCreateStateCopyWithImpl<_$_TicketCreateState>(
          this, _$identity);
}

abstract class _TicketCreateState implements TicketCreateState {
  const factory _TicketCreateState(
      {required final bool isLoading,
      required final String? userId,
      required final String? eventId,
      required final Option<Either<TicketFailure, Object>>
          createFailureOrSuccessOption}) = _$_TicketCreateState;

  @override
  bool get isLoading;
  @override
  String? get userId;
  @override
  String? get eventId;
  @override
  Option<Either<TicketFailure, Object>> get createFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_TicketCreateStateCopyWith<_$_TicketCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
