// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_create_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketCreateModel _$TicketCreateModelFromJson(Map<String, dynamic> json) {
  return _TicketCreateModel.fromJson(json);
}

/// @nodoc
mixin _$TicketCreateModel {
  String get eventId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketCreateModelCopyWith<TicketCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCreateModelCopyWith<$Res> {
  factory $TicketCreateModelCopyWith(
          TicketCreateModel value, $Res Function(TicketCreateModel) then) =
      _$TicketCreateModelCopyWithImpl<$Res, TicketCreateModel>;
  @useResult
  $Res call({String eventId, String userId});
}

/// @nodoc
class _$TicketCreateModelCopyWithImpl<$Res, $Val extends TicketCreateModel>
    implements $TicketCreateModelCopyWith<$Res> {
  _$TicketCreateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketCreateModelCopyWith<$Res>
    implements $TicketCreateModelCopyWith<$Res> {
  factory _$$_TicketCreateModelCopyWith(_$_TicketCreateModel value,
          $Res Function(_$_TicketCreateModel) then) =
      __$$_TicketCreateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventId, String userId});
}

/// @nodoc
class __$$_TicketCreateModelCopyWithImpl<$Res>
    extends _$TicketCreateModelCopyWithImpl<$Res, _$_TicketCreateModel>
    implements _$$_TicketCreateModelCopyWith<$Res> {
  __$$_TicketCreateModelCopyWithImpl(
      _$_TicketCreateModel _value, $Res Function(_$_TicketCreateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_$_TicketCreateModel(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketCreateModel implements _TicketCreateModel {
  const _$_TicketCreateModel({required this.eventId, required this.userId});

  factory _$_TicketCreateModel.fromJson(Map<String, dynamic> json) =>
      _$$_TicketCreateModelFromJson(json);

  @override
  final String eventId;
  @override
  final String userId;

  @override
  String toString() {
    return 'TicketCreateModel(eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketCreateModel &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketCreateModelCopyWith<_$_TicketCreateModel> get copyWith =>
      __$$_TicketCreateModelCopyWithImpl<_$_TicketCreateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketCreateModelToJson(
      this,
    );
  }
}

abstract class _TicketCreateModel implements TicketCreateModel {
  const factory _TicketCreateModel(
      {required final String eventId,
      required final String userId}) = _$_TicketCreateModel;

  factory _TicketCreateModel.fromJson(Map<String, dynamic> json) =
      _$_TicketCreateModel.fromJson;

  @override
  String get eventId;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_TicketCreateModelCopyWith<_$_TicketCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
