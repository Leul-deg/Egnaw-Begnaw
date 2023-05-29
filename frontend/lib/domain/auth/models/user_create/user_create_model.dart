class UserCreateModel {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  const UserCreateModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  factory UserCreateModel.fromJson(Map<String, dynamic> json) {
    return UserCreateModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      password: json['password'],
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