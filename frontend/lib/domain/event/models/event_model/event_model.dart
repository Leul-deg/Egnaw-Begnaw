import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/event/value_objects/value_objects.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  

  const factory EventModel({
    required String id,
    required String name,
    required String description,
    required String title,
    required Place place,
    required StartTime startTime,
    required EndTime endTime,
    required String createdAt,
    required String updatedAt,
    required OrganizerId organizerId,
    required int availableSeats,
    required int takenSeats,
    required int ticketsSold,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
}