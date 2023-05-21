import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_create_model.freezed.dart';
part 'ticket_create_model.g.dart';

@freezed
class TicketCreateModel with _$TicketCreateModel {
  const factory TicketCreateModel({
    required String eventId,
    required String userId,

  }) = _TicketCreateModel;

  factory TicketCreateModel.fromJson(Map<String, dynamic> json) =>
      _$TicketCreateModelFromJson(json);
}