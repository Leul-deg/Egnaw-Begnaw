class OrganizerUpdateModel {
  final String? organizationName;
  final String? email;
  final String? password;
  final String? profileImage;

  const OrganizerUpdateModel({
    this.organizationName,
    this.email,
    this.password,
    this.profileImage,
  });

  factory OrganizerUpdateModel.fromJson(Map<String, dynamic> json) {
    return OrganizerUpdateModel(
      organizationName: json['organizationName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      profileImage: json['profileImage'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'organizationName': organizationName,
      'email': email,
      'password': password,
      'profileImage': profileImage,
    };
  }
}