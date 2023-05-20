import 'package:freezed_annotation/freezed_annotation.dart';

part 'organizer_login_model.freezed.dart';
part 'organizer_login_model.g.dart';

@freezed
class OrganizerLoginModel with _$OrganizerLoginModel {
  const factory OrganizerLoginModel({
    required String email,
    required String password,
  }) = _OrganizerLoginModel;

  factory OrganizerLoginModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizerLoginModelFromJson(json);
}
