class UserUpdateModel {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  const UserUpdateModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  factory UserUpdateModel.fromJson(Map<String, dynamic> json) {
    return UserUpdateModel(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
    };
  }
}