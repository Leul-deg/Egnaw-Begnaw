// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketUpdateModel _$TicketUpdateModelFromJson(Map<String, dynamic> json) {
  return _TicketUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$TicketUpdateModel {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketUpdateModelCopyWith<TicketUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketUpdateModelCopyWith<$Res> {
  factory $TicketUpdateModelCopyWith(
          TicketUpdateModel value, $Res Function(TicketUpdateModel) then) =
      _$TicketUpdateModelCopyWithImpl<$Res, TicketUpdateModel>;
  @useResult
  $Res call({String id, String eventId, String userId});
}

/// @nodoc
class _$TicketUpdateModelCopyWithImpl<$Res, $Val extends TicketUpdateModel>
    implements $TicketUpdateModelCopyWith<$Res> {
  _$TicketUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_TicketUpdateModelCopyWith<$Res>
    implements $TicketUpdateModelCopyWith<$Res> {
  factory _$$_TicketUpdateModelCopyWith(_$_TicketUpdateModel value,
          $Res Function(_$_TicketUpdateModel) then) =
      __$$_TicketUpdateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String eventId, String userId});
}

/// @nodoc
class __$$_TicketUpdateModelCopyWithImpl<$Res>
    extends _$TicketUpdateModelCopyWithImpl<$Res, _$_TicketUpdateModel>
    implements _$$_TicketUpdateModelCopyWith<$Res> {
  __$$_TicketUpdateModelCopyWithImpl(
      _$_TicketUpdateModel _value, $Res Function(_$_TicketUpdateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_$_TicketUpdateModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_TicketUpdateModel implements _TicketUpdateModel {
  const _$_TicketUpdateModel(
      {required this.id, required this.eventId, required this.userId});

  factory _$_TicketUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$$_TicketUpdateModelFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String userId;

  @override
  String toString() {
    return 'TicketUpdateModel(id: $id, eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketUpdateModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, eventId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketUpdateModelCopyWith<_$_TicketUpdateModel> get copyWith =>
      __$$_TicketUpdateModelCopyWithImpl<_$_TicketUpdateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketUpdateModelToJson(
      this,
    );
  }
}

abstract class _TicketUpdateModel implements TicketUpdateModel {
  const factory _TicketUpdateModel(
      {required final String id,
      required final String eventId,
      required final String userId}) = _$_TicketUpdateModel;

  factory _TicketUpdateModel.fromJson(Map<String, dynamic> json) =
      _$_TicketUpdateModel.fromJson;

  @override
  String get id;
  @override
  String get eventId;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_TicketUpdateModelCopyWith<_$_TicketUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
