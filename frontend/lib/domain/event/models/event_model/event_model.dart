import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required String id,
    required String name,
    required String description,
    required String place,
    required String startTime,
    required String endTime,
    required String createdAt,
    required String updatedAt,
    required String organizerId,
    required int availableSeats,
    required int takenSeats,
    required int ticketsSold,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
}