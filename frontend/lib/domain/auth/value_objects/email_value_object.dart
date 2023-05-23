import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_value_object.freezed.dart';
part 'email_value_object.g.dart';

@freezed
class EmailAddress with _$EmailAddress {
  const factory EmailAddress(String value) = _EmailAddress;

  factory EmailAddress.fromJson(Map<String, dynamic> json) =>
      _$EmailAddressFromJson(json);

  // does the validatio check
  factory EmailAddress.validate(String email) {
    if (isValid(email)) {
      return EmailAddress(email);
    } else {
      throw Exception('Invalid email');
    }
  }

  static bool isValid(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

}

// void main() {
//   final email = EmailAddress.validate('value@gmail.com');
//   print(email.value);
// }
