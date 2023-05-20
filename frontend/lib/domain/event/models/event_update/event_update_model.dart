import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_update_model.freezed.dart';
part 'event_update_model.g.dart';

@freezed
class EventUpdateModel with _$EventUpdateModel {
  const factory EventUpdateModel({
    required String name,
    required String description,
    required String place,
    required String startTime,
    required String endTime,
    required int availableSeats,
  }) = _EventUpdateModel;

  factory EventUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$EventUpdateModelFromJson(json);
}