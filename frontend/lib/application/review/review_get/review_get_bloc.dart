import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/review/review.dart';


part 'review_get_event.dart';
part 'review_get_state.dart';

class ReviewGetBloc extends Bloc<ReviewGetEvent, ReviewGetState> {
  final ReviewRepository _reviewRepository;

  ReviewGetBloc(this._reviewRepository) : super(ReviewGetState.initial()) {
    on<GetReviewById>((event, emit) async {
      emit(ReviewGetState.loading());
      final reviewResult = await _reviewRepository.getReview(event.reviewId);
      emit(reviewResult.fold(
        (failure) => ReviewGetState.failure(failure),
        (review) => ReviewGetState.success(review as ReviewModel),
      ));
    });

    on<GetAllReviews>((event, emit) async {
      emit(ReviewGetState.loading());
      final reviewsResult = await _reviewRepository.getAllReviews();
      emit(reviewsResult.fold(
        (failure) => ReviewGetState.failure(failure),
        (reviews) => ReviewGetState.success(reviews.first as ReviewModel),
      ));
    });
  }
}
