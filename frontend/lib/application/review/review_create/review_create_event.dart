part of 'review_create_bloc.dart';

@freezed
class ReviewCreateEvent with _$ReviewCreateEvent {
  const factory ReviewCreateEvent.started() = _Started;
  const factory ReviewCreateEvent.reviewTextChanged(String reviewText) = _ReviewTextChanged;
  const factory ReviewCreateEvent.createReviewPressed(String eventId) = _CreateReviewPressed;
}