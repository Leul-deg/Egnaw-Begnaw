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
  String get description => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  int get availableSeats => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  int get ticketsSold => throw _privateConstructorUsedError;
  String get organizerId => throw _privateConstructorUsedError;

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
      {String description,
      String title,
      String place,
      DateTime startTime,
      DateTime endTime,
      int availableSeats,
      String eventId,
      int ticketsSold,
      String organizerId});
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
    Object? description = null,
    Object? title = null,
    Object? place = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? availableSeats = null,
    Object? eventId = null,
    Object? ticketsSold = null,
    Object? organizerId = null,
  }) {
    return _then(_value.copyWith(
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
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      availableSeats: null == availableSeats
          ? _value.availableSeats
          : availableSeats // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      ticketsSold: null == ticketsSold
          ? _value.ticketsSold
          : ticketsSold // ignore: cast_nullable_to_non_nullable
              as int,
      organizerId: null == organizerId
          ? _value.organizerId
          : organizerId // ignore: cast_nullable_to_non_nullable
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
      {String description,
      String title,
      String place,
      DateTime startTime,
      DateTime endTime,
      int availableSeats,
      String eventId,
      int ticketsSold,
      String organizerId});
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
    Object? description = null,
    Object? title = null,
    Object? place = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? availableSeats = null,
    Object? eventId = null,
    Object? ticketsSold = null,
    Object? organizerId = null,
  }) {
    return _then(_$_EventUpdateModel(
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
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      availableSeats: null == availableSeats
          ? _value.availableSeats
          : availableSeats // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      ticketsSold: null == ticketsSold
          ? _value.ticketsSold
          : ticketsSold // ignore: cast_nullable_to_non_nullable
              as int,
      organizerId: null == organizerId
          ? _value.organizerId
          : organizerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventUpdateModel implements _EventUpdateModel {
  const _$_EventUpdateModel(
      {required this.description,
      required this.title,
      required this.place,
      required this.startTime,
      required this.endTime,
      required this.availableSeats,
      required this.eventId,
      required this.ticketsSold,
      required this.organizerId});

  factory _$_EventUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventUpdateModelFromJson(json);

  @override
  final String description;
  @override
  final String title;
  @override
  final String place;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final int availableSeats;
  @override
  final String eventId;
  @override
  final int ticketsSold;
  @override
  final String organizerId;

  @override
  String toString() {
    return 'EventUpdateModel(description: $description, title: $title, place: $place, startTime: $startTime, endTime: $endTime, availableSeats: $availableSeats, eventId: $eventId, ticketsSold: $ticketsSold, organizerId: $organizerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventUpdateModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.availableSeats, availableSeats) ||
                other.availableSeats == availableSeats) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.ticketsSold, ticketsSold) ||
                other.ticketsSold == ticketsSold) &&
            (identical(other.organizerId, organizerId) ||
                other.organizerId == organizerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, title, place,
      startTime, endTime, availableSeats, eventId, ticketsSold, organizerId);

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
      {required final String description,
      required final String title,
      required final String place,
      required final DateTime startTime,
      required final DateTime endTime,
      required final int availableSeats,
      required final String eventId,
      required final int ticketsSold,
      required final String organizerId}) = _$_EventUpdateModel;

  factory _EventUpdateModel.fromJson(Map<String, dynamic> json) =
      _$_EventUpdateModel.fromJson;

  @override
  String get description;
  @override
  String get title;
  @override
  String get place;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  int get availableSeats;
  @override
  String get eventId;
  @override
  int get ticketsSold;
  @override
  String get organizerId;
  @override
  @JsonKey(ignore: true)
  _$$_EventUpdateModelCopyWith<_$_EventUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
