import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/auth.dart';

part 'organizer_create_model.freezed.dart';
part 'organizer_create_model.g.dart';

@freezed
class OrganizerCreateModel with _$OrganizerCreateModel {
  const factory OrganizerCreateModel({
    required EmailAddress email,
    required Password password,
    required String organizationName,
  }) = _OrganizerCreateModel;

  factory OrganizerCreateModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizerCreateModelFromJson(json);
}