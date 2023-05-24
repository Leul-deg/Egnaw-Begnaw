import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_time_value_objects.freezed.dart';
part 'event_time_value_objects.g.dart';

@freezed
class StartTime with _$StartTime {
  const factory StartTime({
    required DateTime value,
  }) = _StartTime;

  factory StartTime.fromJson(Map<String, dynamic> json) =>
      _$StartTimeFromJson(json);

  static StartTime fromDateTime(DateTime value) {
    // ignore: unnecessary_null_comparison
    if (value == null) {
      throw ArgumentError('Start time cannot be null');
    }
    if (value.isBefore(DateTime.now())) {
      throw ArgumentError('Start time must be in the future');
    }
    // Add any additional validation logic here
    return StartTime(value: value);
  }
}

@freezed
class EndTime with _$EndTime {
  const factory EndTime({
    required DateTime value,
  }) = _EndTime;

  factory EndTime.fromJson(Map<String, dynamic> json) =>
      _$EndTimeFromJson(json);

  static EndTime fromDateTime(DateTime value, StartTime startTime) {
    // ignore: unnecessary_null_comparison
    if (value == null) {
      throw ArgumentError('End time cannot be null');
    }
    if (value.isBefore(startTime.value)) {
      throw ArgumentError('End time must be after start time');
    }
    // Add any additional validation logic here
    return EndTime(value: value);
  }
}