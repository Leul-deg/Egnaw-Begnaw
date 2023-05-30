class OrganizerUpdateModel {
  final String? organizerName;
  final String? email;
  final String? password;
  final String? profileImage;

  const OrganizerUpdateModel({
    this.organizerName,
    this.email,
    this.password,
    this.profileImage,
  });

  factory OrganizerUpdateModel.fromJson(Map<String, dynamic> json) {
    return OrganizerUpdateModel(
      organizerName: json['organizerName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      profileImage: json['profileImage'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'organizerName': organizerName,
      'email': email,
      'password': password,
      'profileImage': profileImage,
    };
  }
}