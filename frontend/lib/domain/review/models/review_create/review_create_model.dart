class ReviewCreateModel {
  final String reviewerId;
  final String reviewText;
  final String eventId;

  const ReviewCreateModel({
    required this.reviewerId,
    required this.reviewText,
    required this.eventId,
  });

  factory ReviewCreateModel.fromJson(Map<String, dynamic> json) {
    return ReviewCreateModel(
      reviewerId: json['reviewerId'],
      reviewText: json['reviewText'],
      eventId: json['eventId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'reviewerId': reviewerId,
      'reviewText': reviewText,
      'eventId': eventId,
    };
  }
}