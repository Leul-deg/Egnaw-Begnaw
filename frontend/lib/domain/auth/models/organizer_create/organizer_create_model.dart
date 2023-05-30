class OrganizerCreateModel {
  final String email;
  final String password;
  final String organizationName;

  const OrganizerCreateModel({
    required this.email,
    required this.password,
    required this.organizationName,
  });

  factory OrganizerCreateModel.fromJson(Map<String, dynamic> json) {
    return OrganizerCreateModel(
      email: json['email'],
      password: json['password'],
      organizationName: json['organizationName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'organizationName': organizationName,
    };
  }
}