// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventUpdateModel _$EventUpdateModelFromJson(Map<String, dynamic> json) {
  return _EventUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$EventUpdateModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  int get availableSeats => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventUpdateModelCopyWith<EventUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventUpdateModelCopyWith<$Res> {
  factory $EventUpdateModelCopyWith(
          EventUpdateModel value, $Res Function(EventUpdateModel) then) =
      _$EventUpdateModelCopyWithImpl<$Res, EventUpdateModel>;
  @useResult
  $Res call(
      {String name,
      String description,
      String place,
      String startTime,
      String endTime,
      int availableSeats,
      String id});
}

/// @nodoc
class _$EventUpdateModelCopyWithImpl<$Res, $Val extends EventUpdateModel>
    implements $EventUpdateModelCopyWith<$Res> {
  _$EventUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? place = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? availableSeats = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      availableSeats: null == availableSeats
          ? _value.availableSeats
          : availableSeats // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventUpdateModelCopyWith<$Res>
    implements $EventUpdateModelCopyWith<$Res> {
  factory _$$_EventUpdateModelCopyWith(
          _$_EventUpdateModel value, $Res Function(_$_EventUpdateModel) then) =
      __$$_EventUpdateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String place,
      String startTime,
      String endTime,
      int availableSeats,
      String id});
}

/// @nodoc
class __$$_EventUpdateModelCopyWithImpl<$Res>
    extends _$EventUpdateModelCopyWithImpl<$Res, _$_EventUpdateModel>
    implements _$$_EventUpdateModelCopyWith<$Res> {
  __$$_EventUpdateModelCopyWithImpl(
      _$_EventUpdateModel _value, $Res Function(_$_EventUpdateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? place = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? availableSeats = null,
    Object? id = null,
  }) {
    return _then(_$_EventUpdateModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      availableSeats: null == availableSeats
          ? _value.availableSeats
          : availableSeats // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventUpdateModel implements _EventUpdateModel {
  const _$_EventUpdateModel(
      {required this.name,
      required this.description,
      required this.place,
      required this.startTime,
      required this.endTime,
      required this.availableSeats,
      required this.id});

  factory _$_EventUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventUpdateModelFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String place;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final int availableSeats;
  @override
  final String id;

  @override
  String toString() {
    return 'EventUpdateModel(name: $name, description: $description, place: $place, startTime: $startTime, endTime: $endTime, availableSeats: $availableSeats, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventUpdateModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.availableSeats, availableSeats) ||
                other.availableSeats == availableSeats) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, place,
      startTime, endTime, availableSeats, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventUpdateModelCopyWith<_$_EventUpdateModel> get copyWith =>
      __$$_EventUpdateModelCopyWithImpl<_$_EventUpdateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventUpdateModelToJson(
      this,
    );
  }
}

abstract class _EventUpdateModel implements EventUpdateModel {
  const factory _EventUpdateModel(
      {required final String name,
      required final String description,
      required final String place,
      required final String startTime,
      required final String endTime,
      required final int availableSeats,
      required final String id}) = _$_EventUpdateModel;

  factory _EventUpdateModel.fromJson(Map<String, dynamic> json) =
      _$_EventUpdateModel.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get place;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  int get availableSeats;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_EventUpdateModelCopyWith<_$_EventUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
