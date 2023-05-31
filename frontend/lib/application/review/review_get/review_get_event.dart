part of 'review_get_bloc.dart';

abstract class ReviewGetEvent {
  const ReviewGetEvent();
}

class GetReviewById extends ReviewGetEvent {
  final String reviewId;

  const GetReviewById(this.reviewId);
}

class GetAllReviews extends ReviewGetEvent {
  const GetAllReviews();
}