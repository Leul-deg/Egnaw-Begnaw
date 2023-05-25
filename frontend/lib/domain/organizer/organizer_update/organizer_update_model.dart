import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/auth.dart';

import '../../auth/value_objects/email_value_object.dart';

part 'organizer_update_model.freezed.dart';
part 'organizer_update_model.g.dart';

@freezed
class OrganizerUpdateModel with _$OrganizerUpdateModel {
  const factory OrganizerUpdateModel({
    required String name,
    required EmailAddress email,
    required String password,
    required String id,
  }) = _OrganizerUpdateModel;

  // to json
  factory OrganizerUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizerUpdateModelFromJson(json);

}
