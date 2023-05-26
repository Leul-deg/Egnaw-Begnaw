// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String reviewText) reviewTextChanged,
    required TResult Function(String reviewId) updateReviewPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String reviewText)? reviewTextChanged,
    TResult? Function(String reviewId)? updateReviewPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String reviewText)? reviewTextChanged,
    TResult Function(String reviewId)? updateReviewPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReviewTextChanged value) reviewTextChanged,
    required TResult Function(_UpdateReviewPressed value) updateReviewPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult? Function(_UpdateReviewPressed value)? updateReviewPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult Function(_UpdateReviewPressed value)? updateReviewPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewUpdateEventCopyWith<$Res> {
  factory $ReviewUpdateEventCopyWith(
          ReviewUpdateEvent value, $Res Function(ReviewUpdateEvent) then) =
      _$ReviewUpdateEventCopyWithImpl<$Res, ReviewUpdateEvent>;
}

/// @nodoc
class _$ReviewUpdateEventCopyWithImpl<$Res, $Val extends ReviewUpdateEvent>
    implements $ReviewUpdateEventCopyWith<$Res> {
  _$ReviewUpdateEventCopyWithImpl(this._value, this._then);

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
    extends _$ReviewUpdateEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ReviewUpdateEvent.started()';
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
    required TResult Function(String reviewId) updateReviewPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String reviewText)? reviewTextChanged,
    TResult? Function(String reviewId)? updateReviewPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String reviewText)? reviewTextChanged,
    TResult Function(String reviewId)? updateReviewPressed,
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
    required TResult Function(_UpdateReviewPressed value) updateReviewPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult? Function(_UpdateReviewPressed value)? updateReviewPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult Function(_UpdateReviewPressed value)? updateReviewPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ReviewUpdateEvent {
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
    extends _$ReviewUpdateEventCopyWithImpl<$Res, _$_ReviewTextChanged>
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
    return 'ReviewUpdateEvent.reviewTextChanged(reviewText: $reviewText)';
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
    required TResult Function(String reviewId) updateReviewPressed,
  }) {
    return reviewTextChanged(reviewText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String reviewText)? reviewTextChanged,
    TResult? Function(String reviewId)? updateReviewPressed,
  }) {
    return reviewTextChanged?.call(reviewText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String reviewText)? reviewTextChanged,
    TResult Function(String reviewId)? updateReviewPressed,
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
    required TResult Function(_UpdateReviewPressed value) updateReviewPressed,
  }) {
    return reviewTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult? Function(_UpdateReviewPressed value)? updateReviewPressed,
  }) {
    return reviewTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult Function(_UpdateReviewPressed value)? updateReviewPressed,
    required TResult orElse(),
  }) {
    if (reviewTextChanged != null) {
      return reviewTextChanged(this);
    }
    return orElse();
  }
}

abstract class _ReviewTextChanged implements ReviewUpdateEvent {
  const factory _ReviewTextChanged(final String reviewText) =
      _$_ReviewTextChanged;

  String get reviewText;
  @JsonKey(ignore: true)
  _$$_ReviewTextChangedCopyWith<_$_ReviewTextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateReviewPressedCopyWith<$Res> {
  factory _$$_UpdateReviewPressedCopyWith(_$_UpdateReviewPressed value,
          $Res Function(_$_UpdateReviewPressed) then) =
      __$$_UpdateReviewPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String reviewId});
}

/// @nodoc
class __$$_UpdateReviewPressedCopyWithImpl<$Res>
    extends _$ReviewUpdateEventCopyWithImpl<$Res, _$_UpdateReviewPressed>
    implements _$$_UpdateReviewPressedCopyWith<$Res> {
  __$$_UpdateReviewPressedCopyWithImpl(_$_UpdateReviewPressed _value,
      $Res Function(_$_UpdateReviewPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
  }) {
    return _then(_$_UpdateReviewPressed(
      null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateReviewPressed implements _UpdateReviewPressed {
  const _$_UpdateReviewPressed(this.reviewId);

  @override
  final String reviewId;

  @override
  String toString() {
    return 'ReviewUpdateEvent.updateReviewPressed(reviewId: $reviewId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateReviewPressed &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateReviewPressedCopyWith<_$_UpdateReviewPressed> get copyWith =>
      __$$_UpdateReviewPressedCopyWithImpl<_$_UpdateReviewPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String reviewText) reviewTextChanged,
    required TResult Function(String reviewId) updateReviewPressed,
  }) {
    return updateReviewPressed(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String reviewText)? reviewTextChanged,
    TResult? Function(String reviewId)? updateReviewPressed,
  }) {
    return updateReviewPressed?.call(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String reviewText)? reviewTextChanged,
    TResult Function(String reviewId)? updateReviewPressed,
    required TResult orElse(),
  }) {
    if (updateReviewPressed != null) {
      return updateReviewPressed(reviewId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReviewTextChanged value) reviewTextChanged,
    required TResult Function(_UpdateReviewPressed value) updateReviewPressed,
  }) {
    return updateReviewPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult? Function(_UpdateReviewPressed value)? updateReviewPressed,
  }) {
    return updateReviewPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReviewTextChanged value)? reviewTextChanged,
    TResult Function(_UpdateReviewPressed value)? updateReviewPressed,
    required TResult orElse(),
  }) {
    if (updateReviewPressed != null) {
      return updateReviewPressed(this);
    }
    return orElse();
  }
}

abstract class _UpdateReviewPressed implements ReviewUpdateEvent {
  const factory _UpdateReviewPressed(final String reviewId) =
      _$_UpdateReviewPressed;

  String get reviewId;
  @JsonKey(ignore: true)
  _$$_UpdateReviewPressedCopyWith<_$_UpdateReviewPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReviewUpdateState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get reviewText => throw _privateConstructorUsedError;
  Option<Either<ReviewFailure, Object>> get updateFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewUpdateStateCopyWith<ReviewUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewUpdateStateCopyWith<$Res> {
  factory $ReviewUpdateStateCopyWith(
          ReviewUpdateState value, $Res Function(ReviewUpdateState) then) =
      _$ReviewUpdateStateCopyWithImpl<$Res, ReviewUpdateState>;
  @useResult
  $Res call(
      {bool isLoading,
      String reviewText,
      Option<Either<ReviewFailure, Object>> updateFailureOrSuccessOption});
}

/// @nodoc
class _$ReviewUpdateStateCopyWithImpl<$Res, $Val extends ReviewUpdateState>
    implements $ReviewUpdateStateCopyWith<$Res> {
  _$ReviewUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reviewText = null,
    Object? updateFailureOrSuccessOption = null,
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
      updateFailureOrSuccessOption: null == updateFailureOrSuccessOption
          ? _value.updateFailureOrSuccessOption
          : updateFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ReviewFailure, Object>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewUpdateStateCopyWith<$Res>
    implements $ReviewUpdateStateCopyWith<$Res> {
  factory _$$_ReviewUpdateStateCopyWith(_$_ReviewUpdateState value,
          $Res Function(_$_ReviewUpdateState) then) =
      __$$_ReviewUpdateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String reviewText,
      Option<Either<ReviewFailure, Object>> updateFailureOrSuccessOption});
}

/// @nodoc
class __$$_ReviewUpdateStateCopyWithImpl<$Res>
    extends _$ReviewUpdateStateCopyWithImpl<$Res, _$_ReviewUpdateState>
    implements _$$_ReviewUpdateStateCopyWith<$Res> {
  __$$_ReviewUpdateStateCopyWithImpl(
      _$_ReviewUpdateState _value, $Res Function(_$_ReviewUpdateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reviewText = null,
    Object? updateFailureOrSuccessOption = null,
  }) {
    return _then(_$_ReviewUpdateState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewText: null == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String,
      updateFailureOrSuccessOption: null == updateFailureOrSuccessOption
          ? _value.updateFailureOrSuccessOption
          : updateFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ReviewFailure, Object>>,
    ));
  }
}

/// @nodoc

class _$_ReviewUpdateState implements _ReviewUpdateState {
  const _$_ReviewUpdateState(
      {required this.isLoading,
      required this.reviewText,
      required this.updateFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final String reviewText;
  @override
  final Option<Either<ReviewFailure, Object>> updateFailureOrSuccessOption;

  @override
  String toString() {
    return 'ReviewUpdateState(isLoading: $isLoading, reviewText: $reviewText, updateFailureOrSuccessOption: $updateFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewUpdateState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.reviewText, reviewText) ||
                other.reviewText == reviewText) &&
            (identical(other.updateFailureOrSuccessOption,
                    updateFailureOrSuccessOption) ||
                other.updateFailureOrSuccessOption ==
                    updateFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, reviewText, updateFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewUpdateStateCopyWith<_$_ReviewUpdateState> get copyWith =>
      __$$_ReviewUpdateStateCopyWithImpl<_$_ReviewUpdateState>(
          this, _$identity);
}

abstract class _ReviewUpdateState implements ReviewUpdateState {
  const factory _ReviewUpdateState(
      {required final bool isLoading,
      required final String reviewText,
      required final Option<Either<ReviewFailure, Object>>
          updateFailureOrSuccessOption}) = _$_ReviewUpdateState;

  @override
  bool get isLoading;
  @override
  String get reviewText;
  @override
  Option<Either<ReviewFailure, Object>> get updateFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewUpdateStateCopyWith<_$_ReviewUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
