import 'package:freezed_annotation/freezed_annotation.dart';

part 'organizer_update_model.freezed.dart';
part 'organizer_update_model.g.dart';

@freezed
class OrganizerUpdateModel with _$OrganizerUpdateModel {
  const factory OrganizerUpdateModel({
    required String name,
    required String email,
    required String password,
    required String id,
  }) = _OrganizerUpdateModel;

  factory OrganizerUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizerUpdateModelFromJson(json);
}
