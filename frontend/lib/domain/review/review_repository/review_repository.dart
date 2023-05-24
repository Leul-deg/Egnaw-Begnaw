import 'package:dartz/dartz.dart';

import 'package:frontend/domain/review/review.dart';

abstract class ReviewRepository {
  Future<Either<ReviewFailure, List<ReviewModel>>> getAllReviews();
  Future<Either<ReviewFailure, ReviewModel>> getReview(String id);
  Future<Either<ReviewFailure, ReviewModel>> createReview(ReviewCreateModel review);
  Future<Either<ReviewFailure, ReviewModel>> updateReview(ReviewUpdateModel review);
  Future<Either<ReviewFailure, Unit>> deleteReview(String id);
}