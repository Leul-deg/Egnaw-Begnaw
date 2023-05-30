class ReviewUpdateModel {
  final String id;
  final String reviewText;

  const ReviewUpdateModel({
    required this.id,
    required this.reviewText,
  });

  factory ReviewUpdateModel.fromJson(Map<String, dynamic> json) {
    return ReviewUpdateModel(
      id: json['id'],
      reviewText: json['reviewText'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'reviewText': reviewText,
    };
  }
}