class OrganizerUpdateModel {
  final String? organizerName;
  final String? email;
  final String? password;

  const OrganizerUpdateModel({
    this.organizerName,
    this.email,
    this.password,
  });

  factory OrganizerUpdateModel.fromJson(Map<String, dynamic> json) {
    return OrganizerUpdateModel(
      organizerName: json['organizerName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'organizerName': organizerName,
      'email': email,
      'password': password,
    };
  }
}