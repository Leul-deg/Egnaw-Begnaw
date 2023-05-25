import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:frontend/data/local/shared_pref/shared_pref.dart';
import 'package:frontend/data/local/local_database/local_storage.dart';

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/review/models/review_create/review_create_model.dart';
import 'package:frontend/domain/review/review.dart';

part 'review_create_event.dart';
part 'review_create_state.dart';
part 'review_create_bloc.freezed.dart';

class ReviewCreateBloc extends Bloc<ReviewCreateEvent, ReviewCreateState> {
  final ReviewRepository reviewRepository;
  ReviewCreateBloc(this.reviewRepository) : super(ReviewCreateState.initial());

  @override
  Stream<ReviewCreateState> mapEventToState(
    ReviewCreateEvent event,
  ) async* {
    yield* event.map(
        // started event
        started: (e) async* {},
        // reviewTextChanged event
        reviewTextChanged: (e) async* {
          yield state.copyWith(
            reviewText: e.reviewText,
            createFailureOrSuccessOption: none(),
          );
        },
        // createReviewPressed event
        createReviewPressed: (e) async* {
          Either<ReviewFailure, Unit>? failureOrSuccess;

          if (state.reviewText == '') {
            failureOrSuccess = left(const ReviewFailure.invalidReview());
          } else {
            final String? userId = await getUserId();
            final String? eventId = e.eventId;

            if (userId == null || eventId == null) {
              yield state.copyWith(
                isLoading: false,
                createFailureOrSuccessOption: some(left(const ReviewFailure.invalidReview())),
              );
              return;
            }

            final ReviewCreateModel review = ReviewCreateModel(
              reviewerId: userId,
              reviewText: state.reviewText,
              eventId: eventId,
            );

            failureOrSuccess = await reviewRepository.createReview(review);
          }

          yield state.copyWith(
            isLoading: true,
            createFailureOrSuccessOption: none(),
          );
        });
  }
}
