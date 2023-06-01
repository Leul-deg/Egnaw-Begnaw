part of 'review_get_bloc.dart';

class ReviewGetState {
  final bool isLoading; // Indicates whether the app is currently loading data
  final ReviewModel review; // The current review being displayed
  final Option<Either<ReviewFailure, Object>> getFailureOrSuccessOption; // The result of the most recent get review operation
  final bool isSuccess; // Indicates whether the most recent get review operation was successful

  const ReviewGetState({
    required this.isLoading,
    required this.review,
    required this.getFailureOrSuccessOption,
    required this.isSuccess,
  });

  factory ReviewGetState.initial() {
    return ReviewGetState(
      isLoading: false,
      review: null as ReviewModel,
      getFailureOrSuccessOption: none(),
      isSuccess: false,
    );
  }

  ReviewGetState copyWith ({
    bool? isLoading,
    ReviewModel? review,
    Option<Either<ReviewFailure, Object>>? getFailureOrSuccessOption,
    bool? isSuccess,
  }) {
    return ReviewGetState(
      isLoading: isLoading ?? this.isLoading,
      review: review ?? this.review,
      getFailureOrSuccessOption: getFailureOrSuccessOption ?? this.getFailureOrSuccessOption,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  factory ReviewGetState.loading() {
    return ReviewGetState(
      isLoading: true,
      review: null as ReviewModel,
      getFailureOrSuccessOption: none(),
      isSuccess: false,
    );
  }

  factory ReviewGetState.success(ReviewModel review) {
    return ReviewGetState(
      isLoading: false,
      review: review,
      getFailureOrSuccessOption: some(right(review)),
      isSuccess: true,
    );
  }

  factory ReviewGetState.failure(ReviewFailure failure) {
    return ReviewGetState(
      isLoading: false,
      review: null as ReviewModel,
      getFailureOrSuccessOption: some(left(failure)),
      isSuccess: false,
    );
  }
}
