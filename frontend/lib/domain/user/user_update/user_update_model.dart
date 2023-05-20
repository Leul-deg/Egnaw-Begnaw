import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_update_model.freezed.dart';
part 'user_update_model.g.dart';

@freezed
class UserUpdateModel with _$UserUpdateModel {
  const factory UserUpdateModel({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String phoneNumber,
  }) = _UserUpdateModel;

  factory UserUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateModelFromJson(json);
}