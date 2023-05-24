import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dartz/dartz.dart';

import 'package:frontend/domain/review/review.dart';

import 'package:frontend/data/local/local_database/local_storage.dart';

import 'package:frontend/data/local/shared_pref/shared_pref.dart';

part 'review_update_event.dart';
part 'review_update_state.dart';
part 'review_update_bloc.freezed.dart';

class ReviewUpdateBloc extends Bloc<ReviewUpdateEvent, ReviewUpdateState> {
  final ReviewRepository reviewRepository;
  ReviewUpdateBloc(this.reviewRepository) : super(ReviewUpdateState.initial());

  @override
  Stream<ReviewUpdateState> mapEventToState(
    ReviewUpdateEvent event,
  ) async* {
    yield* event.map(
        // started event
        started: (e) async* {},
        // reviewTextChanged event
        reviewTextChanged: (e) async* {
          yield state.copyWith(
            reviewText: e.reviewText,
            updateFailureOrSuccessOption: none(),
          );
        },
        // updateReviewPressed event
        updateReviewPressed: (e) async* {
          Either<ReviewFailure, Unit>? failureOrSuccess;

          if (state.reviewText == '') {
            failureOrSuccess = left(const ReviewFailure.invalidReview());
          } else {
            final String? userId = await getUserId();
            final String? reviewId = e.reviewId;

            if (userId == null || reviewId == null) {
              yield state.copyWith(
                isLoading: false,
                updateFailureOrSuccessOption: some(left(const ReviewFailure.invalidReview())),
              );
              return;
            }

            final ReviewUpdateModel review = ReviewUpdateModel(
              id: reviewId,
              reviewText: state.reviewText,
            );

            failureOrSuccess = await reviewRepository.updateReview(review);
          }

          yield state.copyWith(
            isLoading: false,
            updateFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        });
  }
}
