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
  String get organizerId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  int get availableSeats => throw _privateConstructorUsedError;
  int get ticketsSold => throw _privateConstructorUsedError;
  dynamic get required => throw _privateConstructorUsedError;

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
      {String organizerId,
      String description,
      String title,
      String place,
      String startTime,
      String endTime,
      int availableSeats,
      int ticketsSold,
      dynamic required});
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
    Object? organizerId = null,
    Object? description = null,
    Object? title = null,
    Object? place = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? availableSeats = null,
    Object? ticketsSold = null,
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      organizerId: null == organizerId
          ? _value.organizerId
          : organizerId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
      ticketsSold: null == ticketsSold
          ? _value.ticketsSold
          : ticketsSold // ignore: cast_nullable_to_non_nullable
              as int,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {String organizerId,
      String description,
      String title,
      String place,
      String startTime,
      String endTime,
      int availableSeats,
      int ticketsSold,
      dynamic required});
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
    Object? organizerId = null,
    Object? description = null,
    Object? title = null,
    Object? place = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? availableSeats = null,
    Object? ticketsSold = null,
    Object? required = freezed,
  }) {
    return _then(_$_EventCreateModel(
      organizerId: null == organizerId
          ? _value.organizerId
          : organizerId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
      ticketsSold: null == ticketsSold
          ? _value.ticketsSold
          : ticketsSold // ignore: cast_nullable_to_non_nullable
              as int,
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventCreateModel implements _EventCreateModel {
  const _$_EventCreateModel(
      {required this.organizerId,
      required this.description,
      required this.title,
      required this.place,
      required this.startTime,
      required this.endTime,
      required this.availableSeats,
      required this.ticketsSold,
      this.required});

  factory _$_EventCreateModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventCreateModelFromJson(json);

  @override
  final String organizerId;
  @override
  final String description;
  @override
  final String title;
  @override
  final String place;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final int availableSeats;
  @override
  final int ticketsSold;
  @override
  final dynamic required;

  @override
  String toString() {
    return 'EventCreateModel(organizerId: $organizerId, description: $description, title: $title, place: $place, startTime: $startTime, endTime: $endTime, availableSeats: $availableSeats, ticketsSold: $ticketsSold, required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventCreateModel &&
            (identical(other.organizerId, organizerId) ||
                other.organizerId == organizerId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.availableSeats, availableSeats) ||
                other.availableSeats == availableSeats) &&
            (identical(other.ticketsSold, ticketsSold) ||
                other.ticketsSold == ticketsSold) &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      organizerId,
      description,
      title,
      place,
      startTime,
      endTime,
      availableSeats,
      ticketsSold,
      const DeepCollectionEquality().hash(required));

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
      {required final String organizerId,
      required final String description,
      required final String title,
      required final String place,
      required final String startTime,
      required final String endTime,
      required final int availableSeats,
      required final int ticketsSold,
      final dynamic required}) = _$_EventCreateModel;

  factory _EventCreateModel.fromJson(Map<String, dynamic> json) =
      _$_EventCreateModel.fromJson;

  @override
  String get organizerId;
  @override
  String get description;
  @override
  String get title;
  @override
  String get place;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  int get availableSeats;
  @override
  int get ticketsSold;
  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$_EventCreateModelCopyWith<_$_EventCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
