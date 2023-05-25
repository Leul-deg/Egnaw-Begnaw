import 'package:dartz/dartz.dart';

import 'package:frontend/domain/review/review.dart';

abstract class ReviewRepository {
  Future<Either<ReviewFailure, List<Unit>>> getAllReviews();
  Future<Either<ReviewFailure, Unit>> getReview(String id);
  Future<Either<ReviewFailure, Unit>> createReview(ReviewCreateModel review);
  Future<Either<ReviewFailure, Unit>> updateReview(ReviewUpdateModel review);
  Future<Either<ReviewFailure, Unit>> deleteReview(String id);
}