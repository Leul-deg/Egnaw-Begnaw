part of 'review_create_bloc.dart';

class ReviewCreateState {
  const ReviewCreateState({
    required this.isLoading,
    required this.reviewText,
    required this.createFailureOrSuccessOption,
  });

  final bool isLoading;
  final String reviewText;
  final Option<Either<ReviewFailure, Object>> createFailureOrSuccessOption;

  ReviewCreateState copyWith({
    bool? isLoading,
    String? reviewText,
    Option<Either<ReviewFailure, Object>>? createFailureOrSuccessOption,
  }) {
    return ReviewCreateState(
      isLoading: isLoading ?? this.isLoading,
      reviewText: reviewText ?? this.reviewText,
      createFailureOrSuccessOption: createFailureOrSuccessOption ?? this.createFailureOrSuccessOption,
    );
  }

  // initial state
  factory ReviewCreateState.initial() {
    return ReviewCreateState(
      isLoading: false,
      reviewText: '',
      createFailureOrSuccessOption: none(),
    );
  }
}
