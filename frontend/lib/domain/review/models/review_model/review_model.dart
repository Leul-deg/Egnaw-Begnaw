class ReviewModel {
  final String id;
  final String reviewerId;
  final String reviewText;
  final String createdAt;
  final String updatedAt;

  ReviewModel({
    required this.id,
    required this.reviewerId,
    required this.reviewText,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      id: json['id'],
      reviewerId: json['reviewerId'],
      reviewText: json['reviewText'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'reviewerId': reviewerId,
      'reviewText': reviewText,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}