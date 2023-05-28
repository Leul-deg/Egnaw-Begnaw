part of 'review_create_bloc.dart';

@freezed
class ReviewCreateState with _$ReviewCreateState {
  const factory ReviewCreateState({
    required bool isLoading,
    required String reviewText,
    required Option<Either<ReviewFailure, Object>> createFailureOrSuccessOption,
  }) = _ReviewCreateState;

  // initial state
  factory ReviewCreateState.initial() => ReviewCreateState(
    isLoading: false,
    reviewText: '',
    createFailureOrSuccessOption: none(),
  );

}
