// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String reviewText) reviewTextChanged,
    required TResult Function(String eventId) createReviewPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String reviewText)? reviewTextChanged,
    TResult? Function(String eventId)? createReviewPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String reviewText)? reviewTextChanged,
    TResult Function(String eventId)? createReviewPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReviewTextChanged value) reviewTextChanged,
    required TResult Function(_CreateReviewPressed value) createReviewPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult? Function(_CreateReviewPressed value)? createReviewPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult Function(_CreateReviewPressed value)? createReviewPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCreateEventCopyWith<$Res> {
  factory $ReviewCreateEventCopyWith(
          ReviewCreateEvent value, $Res Function(ReviewCreateEvent) then) =
      _$ReviewCreateEventCopyWithImpl<$Res, ReviewCreateEvent>;
}

/// @nodoc
class _$ReviewCreateEventCopyWithImpl<$Res, $Val extends ReviewCreateEvent>
    implements $ReviewCreateEventCopyWith<$Res> {
  _$ReviewCreateEventCopyWithImpl(this._value, this._then);

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
    extends _$ReviewCreateEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ReviewCreateEvent.started()';
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
    required TResult Function(String reviewText) reviewTextChanged,
    required TResult Function(String eventId) createReviewPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String reviewText)? reviewTextChanged,
    TResult? Function(String eventId)? createReviewPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String reviewText)? reviewTextChanged,
    TResult Function(String eventId)? createReviewPressed,
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
    required TResult Function(_ReviewTextChanged value) reviewTextChanged,
    required TResult Function(_CreateReviewPressed value) createReviewPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult? Function(_CreateReviewPressed value)? createReviewPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult Function(_CreateReviewPressed value)? createReviewPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ReviewCreateEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ReviewTextChangedCopyWith<$Res> {
  factory _$$_ReviewTextChangedCopyWith(_$_ReviewTextChanged value,
          $Res Function(_$_ReviewTextChanged) then) =
      __$$_ReviewTextChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String reviewText});
}

/// @nodoc
class __$$_ReviewTextChangedCopyWithImpl<$Res>
    extends _$ReviewCreateEventCopyWithImpl<$Res, _$_ReviewTextChanged>
    implements _$$_ReviewTextChangedCopyWith<$Res> {
  __$$_ReviewTextChangedCopyWithImpl(
      _$_ReviewTextChanged _value, $Res Function(_$_ReviewTextChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewText = null,
  }) {
    return _then(_$_ReviewTextChanged(
      null == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReviewTextChanged implements _ReviewTextChanged {
  const _$_ReviewTextChanged(this.reviewText);

  @override
  final String reviewText;

  @override
  String toString() {
    return 'ReviewCreateEvent.reviewTextChanged(reviewText: $reviewText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewTextChanged &&
            (identical(other.reviewText, reviewText) ||
                other.reviewText == reviewText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewTextChangedCopyWith<_$_ReviewTextChanged> get copyWith =>
      __$$_ReviewTextChangedCopyWithImpl<_$_ReviewTextChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String reviewText) reviewTextChanged,
    required TResult Function(String eventId) createReviewPressed,
  }) {
    return reviewTextChanged(reviewText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String reviewText)? reviewTextChanged,
    TResult? Function(String eventId)? createReviewPressed,
  }) {
    return reviewTextChanged?.call(reviewText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String reviewText)? reviewTextChanged,
    TResult Function(String eventId)? createReviewPressed,
    required TResult orElse(),
  }) {
    if (reviewTextChanged != null) {
      return reviewTextChanged(reviewText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReviewTextChanged value) reviewTextChanged,
    required TResult Function(_CreateReviewPressed value) createReviewPressed,
  }) {
    return reviewTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult? Function(_CreateReviewPressed value)? createReviewPressed,
  }) {
    return reviewTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult Function(_CreateReviewPressed value)? createReviewPressed,
    required TResult orElse(),
  }) {
    if (reviewTextChanged != null) {
      return reviewTextChanged(this);
    }
    return orElse();
  }
}

abstract class _ReviewTextChanged implements ReviewCreateEvent {
  const factory _ReviewTextChanged(final String reviewText) =
      _$_ReviewTextChanged;

  String get reviewText;
  @JsonKey(ignore: true)
  _$$_ReviewTextChangedCopyWith<_$_ReviewTextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateReviewPressedCopyWith<$Res> {
  factory _$$_CreateReviewPressedCopyWith(_$_CreateReviewPressed value,
          $Res Function(_$_CreateReviewPressed) then) =
      __$$_CreateReviewPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$_CreateReviewPressedCopyWithImpl<$Res>
    extends _$ReviewCreateEventCopyWithImpl<$Res, _$_CreateReviewPressed>
    implements _$$_CreateReviewPressedCopyWith<$Res> {
  __$$_CreateReviewPressedCopyWithImpl(_$_CreateReviewPressed _value,
      $Res Function(_$_CreateReviewPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$_CreateReviewPressed(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateReviewPressed implements _CreateReviewPressed {
  const _$_CreateReviewPressed(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'ReviewCreateEvent.createReviewPressed(eventId: $eventId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateReviewPressed &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateReviewPressedCopyWith<_$_CreateReviewPressed> get copyWith =>
      __$$_CreateReviewPressedCopyWithImpl<_$_CreateReviewPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String reviewText) reviewTextChanged,
    required TResult Function(String eventId) createReviewPressed,
  }) {
    return createReviewPressed(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String reviewText)? reviewTextChanged,
    TResult? Function(String eventId)? createReviewPressed,
  }) {
    return createReviewPressed?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String reviewText)? reviewTextChanged,
    TResult Function(String eventId)? createReviewPressed,
    required TResult orElse(),
  }) {
    if (createReviewPressed != null) {
      return createReviewPressed(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReviewTextChanged value) reviewTextChanged,
    required TResult Function(_CreateReviewPressed value) createReviewPressed,
  }) {
    return createReviewPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult? Function(_CreateReviewPressed value)? createReviewPressed,
  }) {
    return createReviewPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult Function(_CreateReviewPressed value)? createReviewPressed,
    required TResult orElse(),
  }) {
    if (createReviewPressed != null) {
      return createReviewPressed(this);
    }
    return orElse();
  }
}

abstract class _CreateReviewPressed implements ReviewCreateEvent {
  const factory _CreateReviewPressed(final String eventId) =
      _$_CreateReviewPressed;

  String get eventId;
  @JsonKey(ignore: true)
  _$$_CreateReviewPressedCopyWith<_$_CreateReviewPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReviewCreateState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get reviewText => throw _privateConstructorUsedError;
  String? get reviewerId => throw _privateConstructorUsedError;
  String? get eventId => throw _privateConstructorUsedError;
  Option<Either<ReviewFailure, Object>> get createFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewCreateStateCopyWith<ReviewCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCreateStateCopyWith<$Res> {
  factory $ReviewCreateStateCopyWith(
          ReviewCreateState value, $Res Function(ReviewCreateState) then) =
      _$ReviewCreateStateCopyWithImpl<$Res, ReviewCreateState>;
  @useResult
  $Res call(
      {bool isLoading,
      String reviewText,
      String? reviewerId,
      String? eventId,
      Option<Either<ReviewFailure, Object>> createFailureOrSuccessOption});
}

/// @nodoc
class _$ReviewCreateStateCopyWithImpl<$Res, $Val extends ReviewCreateState>
    implements $ReviewCreateStateCopyWith<$Res> {
  _$ReviewCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reviewText = null,
    Object? reviewerId = freezed,
    Object? eventId = freezed,
    Object? createFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewText: null == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerId: freezed == reviewerId
          ? _value.reviewerId
          : reviewerId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      createFailureOrSuccessOption: null == createFailureOrSuccessOption
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ReviewFailure, Object>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewCreateStateCopyWith<$Res>
    implements $ReviewCreateStateCopyWith<$Res> {
  factory _$$_ReviewCreateStateCopyWith(_$_ReviewCreateState value,
          $Res Function(_$_ReviewCreateState) then) =
      __$$_ReviewCreateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String reviewText,
      String? reviewerId,
      String? eventId,
      Option<Either<ReviewFailure, Object>> createFailureOrSuccessOption});
}

/// @nodoc
class __$$_ReviewCreateStateCopyWithImpl<$Res>
    extends _$ReviewCreateStateCopyWithImpl<$Res, _$_ReviewCreateState>
    implements _$$_ReviewCreateStateCopyWith<$Res> {
  __$$_ReviewCreateStateCopyWithImpl(
      _$_ReviewCreateState _value, $Res Function(_$_ReviewCreateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reviewText = null,
    Object? reviewerId = freezed,
    Object? eventId = freezed,
    Object? createFailureOrSuccessOption = null,
  }) {
    return _then(_$_ReviewCreateState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewText: null == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerId: freezed == reviewerId
          ? _value.reviewerId
          : reviewerId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      createFailureOrSuccessOption: null == createFailureOrSuccessOption
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ReviewFailure, Object>>,
    ));
  }
}

/// @nodoc

class _$_ReviewCreateState implements _ReviewCreateState {
  const _$_ReviewCreateState(
      {required this.isLoading,
      required this.reviewText,
      required this.reviewerId,
      required this.eventId,
      required this.createFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final String reviewText;
  @override
  final String? reviewerId;
  @override
  final String? eventId;
  @override
  final Option<Either<ReviewFailure, Object>> createFailureOrSuccessOption;

  @override
  String toString() {
    return 'ReviewCreateState(isLoading: $isLoading, reviewText: $reviewText, reviewerId: $reviewerId, eventId: $eventId, createFailureOrSuccessOption: $createFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewCreateState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.reviewText, reviewText) ||
                other.reviewText == reviewText) &&
            (identical(other.reviewerId, reviewerId) ||
                other.reviewerId == reviewerId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.createFailureOrSuccessOption,
                    createFailureOrSuccessOption) ||
                other.createFailureOrSuccessOption ==
                    createFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, reviewText,
      reviewerId, eventId, createFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCreateStateCopyWith<_$_ReviewCreateState> get copyWith =>
      __$$_ReviewCreateStateCopyWithImpl<_$_ReviewCreateState>(
          this, _$identity);
}

abstract class _ReviewCreateState implements ReviewCreateState {
  const factory _ReviewCreateState(
      {required final bool isLoading,
      required final String reviewText,
      required final String? reviewerId,
      required final String? eventId,
      required final Option<Either<ReviewFailure, Object>>
          createFailureOrSuccessOption}) = _$_ReviewCreateState;

  @override
  bool get isLoading;
  @override
  String get reviewText;
  @override
  String? get reviewerId;
  @override
  String? get eventId;
  @override
  Option<Either<ReviewFailure, Object>> get createFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCreateStateCopyWith<_$_ReviewCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
