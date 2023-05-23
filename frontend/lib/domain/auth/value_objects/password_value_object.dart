import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_value_object.freezed.dart';
part 'password_value_object.g.dart';

@freezed
class Password with _$Password {
  const factory Password(String value) = _Password;

  factory Password.fromJson(Map<String, dynamic> json) =>
      _$PasswordFromJson(json);

  // does the validatio check
  factory Password.validate(String password) {
    if (isValid(password)) {
      return Password(password);
    } else {
      throw Exception('Invalid password');
    }
  }

  static bool isValid(String password) {
    if (password.length < 8) {
      throw Exception('Password must be at least 8 characters');
    }
    return true;
  }

  
}