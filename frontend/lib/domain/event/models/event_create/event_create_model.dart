import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/event/value_objects/value_objects.dart';


part 'event_create_model.freezed.dart';
part 'event_create_model.g.dart';

@freezed
class EventCreateModel with _$EventCreateModel {
  const factory EventCreateModel({
    required String organizerId,
    required String description,
    required String title,
    required String place,
    required String startTime,
    required String endTime,
    required int availableSeats,
    required int ticketsSold,
    required
  }) = _EventCreateModel;

  factory EventCreateModel.fromJson(Map<String, dynamic> json) =>
      _$EventCreateModelFromJson(json);
}