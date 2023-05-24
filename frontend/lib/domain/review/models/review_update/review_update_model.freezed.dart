// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewUpdateModel _$ReviewUpdateModelFromJson(Map<String, dynamic> json) {
  return _ReviewUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewUpdateModel {
  String get id => throw _privateConstructorUsedError;
  String get reviewText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewUpdateModelCopyWith<ReviewUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewUpdateModelCopyWith<$Res> {
  factory $ReviewUpdateModelCopyWith(
          ReviewUpdateModel value, $Res Function(ReviewUpdateModel) then) =
      _$ReviewUpdateModelCopyWithImpl<$Res, ReviewUpdateModel>;
  @useResult
  $Res call({String id, String reviewText});
}

/// @nodoc
class _$ReviewUpdateModelCopyWithImpl<$Res, $Val extends ReviewUpdateModel>
    implements $ReviewUpdateModelCopyWith<$Res> {
  _$ReviewUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reviewText = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      reviewText: null == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewUpdateModelCopyWith<$Res>
    implements $ReviewUpdateModelCopyWith<$Res> {
  factory _$$_ReviewUpdateModelCopyWith(_$_ReviewUpdateModel value,
          $Res Function(_$_ReviewUpdateModel) then) =
      __$$_ReviewUpdateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String reviewText});
}

/// @nodoc
class __$$_ReviewUpdateModelCopyWithImpl<$Res>
    extends _$ReviewUpdateModelCopyWithImpl<$Res, _$_ReviewUpdateModel>
    implements _$$_ReviewUpdateModelCopyWith<$Res> {
  __$$_ReviewUpdateModelCopyWithImpl(
      _$_ReviewUpdateModel _value, $Res Function(_$_ReviewUpdateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reviewText = null,
  }) {
    return _then(_$_ReviewUpdateModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      reviewText: null == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewUpdateModel implements _ReviewUpdateModel {
  const _$_ReviewUpdateModel({required this.id, required this.reviewText});

  factory _$_ReviewUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewUpdateModelFromJson(json);

  @override
  final String id;
  @override
  final String reviewText;

  @override
  String toString() {
    return 'ReviewUpdateModel(id: $id, reviewText: $reviewText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewUpdateModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reviewText, reviewText) ||
                other.reviewText == reviewText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, reviewText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewUpdateModelCopyWith<_$_ReviewUpdateModel> get copyWith =>
      __$$_ReviewUpdateModelCopyWithImpl<_$_ReviewUpdateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewUpdateModelToJson(
      this,
    );
  }
}

abstract class _ReviewUpdateModel implements ReviewUpdateModel {
  const factory _ReviewUpdateModel(
      {required final String id,
      required final String reviewText}) = _$_ReviewUpdateModel;

  factory _ReviewUpdateModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewUpdateModel.fromJson;

  @override
  String get id;
  @override
  String get reviewText;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewUpdateModelCopyWith<_$_ReviewUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
