part of 'review_update_bloc.dart';

@freezed
class ReviewUpdateState with _$ReviewUpdateState {
  const factory ReviewUpdateState({
    required bool isLoading,
    required String reviewText,
    required Option<Either<ReviewFailure, Object>> updateFailureOrSuccessOption,
  }) = _ReviewUpdateState;

  // initial state
  factory ReviewUpdateState.initial() => ReviewUpdateState(
    isLoading: false,
    reviewText: '',
    updateFailureOrSuccessOption: none(),
  );
}
