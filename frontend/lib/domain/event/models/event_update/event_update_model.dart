import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_update_model.freezed.dart';
part 'event_update_model.g.dart';

@freezed
class EventUpdateModel with _$EventUpdateModel {
  const factory EventUpdateModel({
    required String description,
    required String title,
    required String place,
    required DateTime startTime,
    required DateTime endTime,
    required int availableSeats,
    required String eventId,
    required int ticketsSold,
    required String organizerId,
  }) = _EventUpdateModel;

  factory EventUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$EventUpdateModelFromJson(json);
}