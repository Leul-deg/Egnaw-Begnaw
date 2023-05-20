// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_create_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventCreateModel _$EventCreateModelFromJson(Map<String, dynamic> json) {
  return _EventCreateModel.fromJson(json);
}

/// @nodoc
mixin _$EventCreateModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  int get availableSeats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCreateModelCopyWith<EventCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCreateModelCopyWith<$Res> {
  factory $EventCreateModelCopyWith(
          EventCreateModel value, $Res Function(EventCreateModel) then) =
      _$EventCreateModelCopyWithImpl<$Res, EventCreateModel>;
  @useResult
  $Res call(
      {String name,
      String description,
      String place,
      String startTime,
      String endTime,
      int availableSeats});
}

/// @nodoc
class _$EventCreateModelCopyWithImpl<$Res, $Val extends EventCreateModel>
    implements $EventCreateModelCopyWith<$Res> {
  _$EventCreateModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventCreateModelCopyWith<$Res>
    implements $EventCreateModelCopyWith<$Res> {
  factory _$$_EventCreateModelCopyWith(
          _$_EventCreateModel value, $Res Function(_$_EventCreateModel) then) =
      __$$_EventCreateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String place,
      String startTime,
      String endTime,
      int availableSeats});
}

/// @nodoc
class __$$_EventCreateModelCopyWithImpl<$Res>
    extends _$EventCreateModelCopyWithImpl<$Res, _$_EventCreateModel>
    implements _$$_EventCreateModelCopyWith<$Res> {
  __$$_EventCreateModelCopyWithImpl(
      _$_EventCreateModel _value, $Res Function(_$_EventCreateModel) _then)
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
  }) {
    return _then(_$_EventCreateModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventCreateModel implements _EventCreateModel {
  const _$_EventCreateModel(
      {required this.name,
      required this.description,
      required this.place,
      required this.startTime,
      required this.endTime,
      required this.availableSeats});

  factory _$_EventCreateModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventCreateModelFromJson(json);

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
  String toString() {
    return 'EventCreateModel(name: $name, description: $description, place: $place, startTime: $startTime, endTime: $endTime, availableSeats: $availableSeats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventCreateModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.availableSeats, availableSeats) ||
                other.availableSeats == availableSeats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, place,
      startTime, endTime, availableSeats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventCreateModelCopyWith<_$_EventCreateModel> get copyWith =>
      __$$_EventCreateModelCopyWithImpl<_$_EventCreateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventCreateModelToJson(
      this,
    );
  }
}

abstract class _EventCreateModel implements EventCreateModel {
  const factory _EventCreateModel(
      {required final String name,
      required final String description,
      required final String place,
      required final String startTime,
      required final String endTime,
      required final int availableSeats}) = _$_EventCreateModel;

  factory _EventCreateModel.fromJson(Map<String, dynamic> json) =
      _$_EventCreateModel.fromJson;

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
  @JsonKey(ignore: true)
  _$$_EventCreateModelCopyWith<_$_EventCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
