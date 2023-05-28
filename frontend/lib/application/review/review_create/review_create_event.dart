part of 'review_create_bloc.dart';

class ReviewCreateEvent {
  const ReviewCreateEvent._();

  const factory ReviewCreateEvent.started() = _Started;
  const factory ReviewCreateEvent.reviewTextChanged(String reviewText) = _ReviewTextChanged;
  const factory ReviewCreateEvent.createReviewPressed(String eventId) = _CreateReviewPressed;
}

class _Started extends ReviewCreateEvent {
  const _Started() : super._();
}

class _ReviewTextChanged extends ReviewCreateEvent {
  const _ReviewTextChanged(this.reviewText) : super._();

  final String reviewText;
}

class _CreateReviewPressed extends ReviewCreateEvent {
  const _CreateReviewPressed(this.eventId) : super._();

  final String eventId;
}