// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_create_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewCreateModel _$ReviewCreateModelFromJson(Map<String, dynamic> json) {
  return _ReviewCreateModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewCreateModel {
  String get reviewerId => throw _privateConstructorUsedError;
  String get reviewText => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCreateModelCopyWith<ReviewCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCreateModelCopyWith<$Res> {
  factory $ReviewCreateModelCopyWith(
          ReviewCreateModel value, $Res Function(ReviewCreateModel) then) =
      _$ReviewCreateModelCopyWithImpl<$Res, ReviewCreateModel>;
  @useResult
  $Res call({String reviewerId, String reviewText, String eventId});
}

/// @nodoc
class _$ReviewCreateModelCopyWithImpl<$Res, $Val extends ReviewCreateModel>
    implements $ReviewCreateModelCopyWith<$Res> {
  _$ReviewCreateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewerId = null,
    Object? reviewText = null,
    Object? eventId = null,
  }) {
    return _then(_value.copyWith(
      reviewerId: null == reviewerId
          ? _value.reviewerId
          : reviewerId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewText: null == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewCreateModelCopyWith<$Res>
    implements $ReviewCreateModelCopyWith<$Res> {
  factory _$$_ReviewCreateModelCopyWith(_$_ReviewCreateModel value,
          $Res Function(_$_ReviewCreateModel) then) =
      __$$_ReviewCreateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reviewerId, String reviewText, String eventId});
}

/// @nodoc
class __$$_ReviewCreateModelCopyWithImpl<$Res>
    extends _$ReviewCreateModelCopyWithImpl<$Res, _$_ReviewCreateModel>
    implements _$$_ReviewCreateModelCopyWith<$Res> {
  __$$_ReviewCreateModelCopyWithImpl(
      _$_ReviewCreateModel _value, $Res Function(_$_ReviewCreateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewerId = null,
    Object? reviewText = null,
    Object? eventId = null,
  }) {
    return _then(_$_ReviewCreateModel(
      reviewerId: null == reviewerId
          ? _value.reviewerId
          : reviewerId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewText: null == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewCreateModel implements _ReviewCreateModel {
  const _$_ReviewCreateModel(
      {required this.reviewerId,
      required this.reviewText,
      required this.eventId});

  factory _$_ReviewCreateModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewCreateModelFromJson(json);

  @override
  final String reviewerId;
  @override
  final String reviewText;
  @override
  final String eventId;

  @override
  String toString() {
    return 'ReviewCreateModel(reviewerId: $reviewerId, reviewText: $reviewText, eventId: $eventId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewCreateModel &&
            (identical(other.reviewerId, reviewerId) ||
                other.reviewerId == reviewerId) &&
            (identical(other.reviewText, reviewText) ||
                other.reviewText == reviewText) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reviewerId, reviewText, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCreateModelCopyWith<_$_ReviewCreateModel> get copyWith =>
      __$$_ReviewCreateModelCopyWithImpl<_$_ReviewCreateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewCreateModelToJson(
      this,
    );
  }
}

abstract class _ReviewCreateModel implements ReviewCreateModel {
  const factory _ReviewCreateModel(
      {required final String reviewerId,
      required final String reviewText,
      required final String eventId}) = _$_ReviewCreateModel;

  factory _ReviewCreateModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewCreateModel.fromJson;

  @override
  String get reviewerId;
  @override
  String get reviewText;
  @override
  String get eventId;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCreateModelCopyWith<_$_ReviewCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
