import 'package:equatable/equatable.dart';

class Password extends Equatable {
  final String password;

  Password(this.password) {
    if (password.isEmpty) {
      throw Exception('Password can not be empty');
    }
    if (password.length < 8) {
      throw Exception('Password must be at least 8 characters');
    }
  }

  isValid() {
    return password.length >= 8;
  }

  factory Password.fromJson(Map<String, dynamic> json) {
    return Password(json['password']);
  }

  Map<String, dynamic> toJson() {
    return {
      'password': password,
    };
  }

  @override
  List<Object?> get props => [password];
}
