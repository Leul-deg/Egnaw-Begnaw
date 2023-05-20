import 'package:freezed_annotation/freezed_annotation.dart';

part 'organizer_create_model.freezed.dart';
part 'organizer_create_model.g.dart';

@freezed
class OrganizerCreateModel with _$OrganizerCreateModel {
  const factory OrganizerCreateModel({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String organizationName,
  }) = _OrganizerCreateModel;

  factory OrganizerCreateModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizerCreateModelFromJson(json);
}