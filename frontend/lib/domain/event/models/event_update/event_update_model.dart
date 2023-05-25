import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/event/value_objects/value_objects.dart';

part 'event_update_model.freezed.dart';
part 'event_update_model.g.dart';

@freezed
class EventUpdateModel with _$EventUpdateModel {
  const factory EventUpdateModel({
    required String description,
    required String title,
    required Place place,
    required StartTime startTime,
    required EndTime endTime,
    required int availableSeats,
    required String eventId,
    required int ticketsSold,
    required OrganizerId organizerId,
  }) = _EventUpdateModel;

  factory EventUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$EventUpdateModelFromJson(json);
}