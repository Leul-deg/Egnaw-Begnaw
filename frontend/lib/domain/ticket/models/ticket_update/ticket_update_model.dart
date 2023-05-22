import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_update_model.freezed.dart';
part 'ticket_update_model.g.dart';

@freezed
class TicketUpdateModel with _$TicketUpdateModel {
  const factory TicketUpdateModel({
    required String id,
    required String eventId,
    required String userId,
  }) = _TicketUpdateModel;

  factory TicketUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$TicketUpdateModelFromJson(json);
}