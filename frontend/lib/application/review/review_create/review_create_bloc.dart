import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:frontend/data/local/local_database/local_storage.dart';

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/review/review.dart';

part 'review_create_event.dart';
part 'review_create_state.dart';

class ReviewCreateBloc extends Bloc<ReviewCreateEvent, ReviewCreateState> {
  final ReviewRepository reviewRepository;

  // final LocalDatabase local_storage = LocalDatabase.getInstance;
  ReviewCreateBloc(this.reviewRepository) : super(ReviewCreateState.initial()){

    on<_ReviewTextChanged>((event, emit) {
      emit(state.copyWith(
        reviewText: event.reviewText,
        createFailureOrSuccessOption: none(),
      ));
    });

    on<_CreateReviewPressed>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        createFailureOrSuccessOption: none(),
      ));

      Either<ReviewFailure, Object>? failureOrSuccess;

      final reviewTextIsValid = state.reviewText.isNotEmpty;

      if (!reviewTextIsValid) {
        failureOrSuccess = left(ReviewFailure.invalidReview());
      }

      else {
        // get reviewer id from shared preferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String reviewerId = prefs.getString('userId')!;


        failureOrSuccess = await reviewRepository.createReview(
          ReviewCreateModel(
            reviewText: state.reviewText,
            reviewerId: reviewerId,
            eventId: event.eventId,
          ),
        );
      }
      
      emit(state.copyWith(
        isLoading: false,
        createFailureOrSuccessOption: some(failureOrSuccess),
      ));
    });

  }
}
