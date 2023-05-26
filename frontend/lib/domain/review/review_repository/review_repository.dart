import 'package:dartz/dartz.dart';

import 'package:frontend/domain/review/review.dart';

abstract class ReviewRepository {
  Future<Either<ReviewFailure, List<Object>>> getAllReviews();
  Future<Either<ReviewFailure, Object>> getReview(String id);
  Future<Either<ReviewFailure, Object>> createReview(ReviewCreateModel review);
  Future<Either<ReviewFailure, Object>> updateReview(ReviewUpdateModel review);
  Future<Either<ReviewFailure, Object>> deleteReview(String id);
}