import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/auth.dart';


part 'organizer_update_model.freezed.dart';
part 'organizer_update_model.g.dart';

@freezed
class OrganizerUpdateModel with _$OrganizerUpdateModel {
  const factory OrganizerUpdateModel({
    required String organizerName,
    required String id, 
  }) = _OrganizerUpdateModel;

  // to json
  factory OrganizerUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizerUpdateModelFromJson(json);

}
