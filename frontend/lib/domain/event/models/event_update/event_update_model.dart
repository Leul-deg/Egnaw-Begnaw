import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/event/value_objects/value_objects.dart';

part 'event_update_model.freezed.dart';
part 'event_update_model.g.dart';

@freezed
class EventUpdateModel with _$EventUpdateModel {
  const factory EventUpdateModel({
    required String description,
    required String title,
    required String place,
    required String startTime,
    required String endTime,
    required int availableSeats,
    required int ticketsSold,
  }) = _EventUpdateModel;

  factory EventUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$EventUpdateModelFromJson(json);
}