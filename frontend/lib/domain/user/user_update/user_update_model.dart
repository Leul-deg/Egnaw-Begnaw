class UserUpdateModel {
  String? firstName;
  String? lastName;
  String? email;
  String? password;

  UserUpdateModel({
    this.firstName,
    this.lastName,
    this.email,
    this.password,
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
