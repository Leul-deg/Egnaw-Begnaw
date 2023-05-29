
class OrganizerLoginModel {
  final String email;
  final String password;

  OrganizerLoginModel({
    required this.email,
    required this.password,
  });

  factory OrganizerLoginModel.fromJson(Map<String, dynamic> json) {
    return OrganizerLoginModel(
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}