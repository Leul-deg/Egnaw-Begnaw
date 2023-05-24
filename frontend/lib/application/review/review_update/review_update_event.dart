part of 'review_update_bloc.dart';

@freezed
class ReviewUpdateEvent with _$ReviewUpdateEvent {
  const factory ReviewUpdateEvent.started() = _Started;
  const factory ReviewUpdateEvent.reviewTextChanged(String reviewText) =
      _ReviewTextChanged;
  const factory ReviewUpdateEvent.updateReviewPressed(String reviewId) = _UpdateReviewPressed;
}