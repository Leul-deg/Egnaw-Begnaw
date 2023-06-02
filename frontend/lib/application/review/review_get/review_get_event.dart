part of 'review_get_bloc.dart';

abstract class ReviewGetEvent {
  const ReviewGetEvent._();

  const factory ReviewGetEvent.getReviewById(String reviewId) = GetReviewById;
  const factory ReviewGetEvent.getAllReviews() = GetAllReviews;
  const factory ReviewGetEvent.deleteReviewById(String reviewId) =
      DeleteReviewById;

  const factory ReviewGetEvent.getReviewsByEventId() = GetReviewsByEventId;
}

class GetReviewById extends ReviewGetEvent {
  final String reviewId;

  const GetReviewById(this.reviewId) : super._();
}

class GetAllReviews extends ReviewGetEvent {
  const GetAllReviews() : super._();
}

class GetReviewsByEventId extends ReviewGetEvent {
  const GetReviewsByEventId() : super._();
}

class DeleteReviewById extends ReviewGetEvent {
  final String reviewId;

  const DeleteReviewById(this.reviewId) : super._();
}
