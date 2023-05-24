part of 'review_create_bloc.dart';

@freezed
class ReviewCreateState with _$ReviewCreateState {
  const factory ReviewCreateState({
    required bool isLoading,
    required String reviewText,
    required String? reviewerId,
    required String? eventId,
    required Option<Either<ReviewFailure, Unit>> createFailureOrSuccessOption,
  }) = _ReviewCreateState;

  // initial state
  factory ReviewCreateState.initial() => ReviewCreateState(
    isLoading: false,
    reviewText: '',
    reviewerId: null,
    eventId: null,
    createFailureOrSuccessOption: none(),
  );

}
