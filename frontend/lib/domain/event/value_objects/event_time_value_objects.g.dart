// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_time_value_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StartTime _$$_StartTimeFromJson(Map<String, dynamic> json) => _$_StartTime(
      value: DateTime.parse(json['value'] as String),
    );

Map<String, dynamic> _$$_StartTimeToJson(_$_StartTime instance) =>
    <String, dynamic>{
      'value': instance.value.toIso8601String(),
    };

_$_EndTime _$$_EndTimeFromJson(Map<String, dynamic> json) => _$_EndTime(
      value: DateTime.parse(json['value'] as String),
    );

Map<String, dynamic> _$$_EndTimeToJson(_$_EndTime instance) =>
    <String, dynamic>{
      'value': instance.value.toIso8601String(),
    };
