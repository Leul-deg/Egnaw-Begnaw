// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_time_value_objects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StartTime _$StartTimeFromJson(Map<String, dynamic> json) {
  return _StartTime.fromJson(json);
}

/// @nodoc
mixin _$StartTime {
  DateTime get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartTimeCopyWith<StartTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartTimeCopyWith<$Res> {
  factory $StartTimeCopyWith(StartTime value, $Res Function(StartTime) then) =
      _$StartTimeCopyWithImpl<$Res, StartTime>;
  @useResult
  $Res call({DateTime value});
}

/// @nodoc
class _$StartTimeCopyWithImpl<$Res, $Val extends StartTime>
    implements $StartTimeCopyWith<$Res> {
  _$StartTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartTimeCopyWith<$Res> implements $StartTimeCopyWith<$Res> {
  factory _$$_StartTimeCopyWith(
          _$_StartTime value, $Res Function(_$_StartTime) then) =
      __$$_StartTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime value});
}

/// @nodoc
class __$$_StartTimeCopyWithImpl<$Res>
    extends _$StartTimeCopyWithImpl<$Res, _$_StartTime>
    implements _$$_StartTimeCopyWith<$Res> {
  __$$_StartTimeCopyWithImpl(
      _$_StartTime _value, $Res Function(_$_StartTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_StartTime(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StartTime with DiagnosticableTreeMixin implements _StartTime {
  const _$_StartTime({required this.value});

  factory _$_StartTime.fromJson(Map<String, dynamic> json) =>
      _$$_StartTimeFromJson(json);

  @override
  final DateTime value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartTime(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StartTime'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartTime &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartTimeCopyWith<_$_StartTime> get copyWith =>
      __$$_StartTimeCopyWithImpl<_$_StartTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartTimeToJson(
      this,
    );
  }
}

abstract class _StartTime implements StartTime {
  const factory _StartTime({required final DateTime value}) = _$_StartTime;

  factory _StartTime.fromJson(Map<String, dynamic> json) =
      _$_StartTime.fromJson;

  @override
  DateTime get value;
  @override
  @JsonKey(ignore: true)
  _$$_StartTimeCopyWith<_$_StartTime> get copyWith =>
      throw _privateConstructorUsedError;
}

EndTime _$EndTimeFromJson(Map<String, dynamic> json) {
  return _EndTime.fromJson(json);
}

/// @nodoc
mixin _$EndTime {
  DateTime get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EndTimeCopyWith<EndTime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndTimeCopyWith<$Res> {
  factory $EndTimeCopyWith(EndTime value, $Res Function(EndTime) then) =
      _$EndTimeCopyWithImpl<$Res, EndTime>;
  @useResult
  $Res call({DateTime value});
}

/// @nodoc
class _$EndTimeCopyWithImpl<$Res, $Val extends EndTime>
    implements $EndTimeCopyWith<$Res> {
  _$EndTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EndTimeCopyWith<$Res> implements $EndTimeCopyWith<$Res> {
  factory _$$_EndTimeCopyWith(
          _$_EndTime value, $Res Function(_$_EndTime) then) =
      __$$_EndTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime value});
}

/// @nodoc
class __$$_EndTimeCopyWithImpl<$Res>
    extends _$EndTimeCopyWithImpl<$Res, _$_EndTime>
    implements _$$_EndTimeCopyWith<$Res> {
  __$$_EndTimeCopyWithImpl(_$_EndTime _value, $Res Function(_$_EndTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_EndTime(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EndTime with DiagnosticableTreeMixin implements _EndTime {
  const _$_EndTime({required this.value});

  factory _$_EndTime.fromJson(Map<String, dynamic> json) =>
      _$$_EndTimeFromJson(json);

  @override
  final DateTime value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EndTime(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EndTime'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EndTime &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EndTimeCopyWith<_$_EndTime> get copyWith =>
      __$$_EndTimeCopyWithImpl<_$_EndTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EndTimeToJson(
      this,
    );
  }
}

abstract class _EndTime implements EndTime {
  const factory _EndTime({required final DateTime value}) = _$_EndTime;

  factory _EndTime.fromJson(Map<String, dynamic> json) = _$_EndTime.fromJson;

  @override
  DateTime get value;
  @override
  @JsonKey(ignore: true)
  _$$_EndTimeCopyWith<_$_EndTime> get copyWith =>
      throw _privateConstructorUsedError;
}
