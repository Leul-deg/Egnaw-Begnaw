import 'package:freezed_annotation/freezed_annotation.dart';
part 'organizer_model.freezed.dart';
part 'organizer_model.g.dart';

@freezed
class OrganizerModel with _$OrganizerModel {
  const factory OrganizerModel({
    required String id,
    required String name,
    required String email,
    required String password,
    required String createdAt,
  }) = _OrganizerModel;

  factory OrganizerModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizerModelFromJson(json);
}