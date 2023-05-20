import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_create_model.freezed.dart';
part 'event_create_model.g.dart';

@freezed
class EventCreateModel with _$EventCreateModel {
  const factory EventCreateModel({
    required String name,
    required String description,
    required String place,
    required String startTime,
    required String endTime,
    required int availableSeats,
  }) = _EventCreateModel;

  factory EventCreateModel.fromJson(Map<String, dynamic> json) =>
      _$EventCreateModelFromJson(json);
}