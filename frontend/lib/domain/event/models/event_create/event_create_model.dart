import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_create_model.freezed.dart';
part 'event_create_model.g.dart';

@freezed
class EventCreateModel with _$EventCreateModel {
  const factory EventCreateModel({
    required String organizerId,
    required String description,
    required String title,
    required String place,
    required DateTime startTime,
    required DateTime endTime,
    required int availableSeats,
    required int ticketsSold,
    required
  }) = _EventCreateModel;

  factory EventCreateModel.fromJson(Map<String, dynamic> json) =>
      _$EventCreateModelFromJson(json);
}