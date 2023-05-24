import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'organizer_id_value_object.freezed.dart';
part 'organizer_id_value_object.g.dart';

@freezed
class OrganizerId with _$OrganizerId {
  const factory OrganizerId({
    required String value,
  }) = _OrganizerId;

  factory OrganizerId.fromJson(Map<String, dynamic> json) =>
      _$OrganizerIdFromJson(json);

  static OrganizerId fromString(String value) {
    if (value.isEmpty) {
      throw ArgumentError('Organizer ID cannot be empty');
    }
    // Add any additional validation logic here
    return OrganizerId(value: value);
  }
}