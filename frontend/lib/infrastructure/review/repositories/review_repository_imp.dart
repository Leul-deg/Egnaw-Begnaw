import 'package:dartz/dartz.dart';


import 'package:frontend/domain/review/review.dart';
import 'package:frontend/infrastructure/review/data-sources/review_data_sources.dart';



class ReviewRepositoryImp implements ReviewRepository{
  final ReviewDataSource reviewDataSource;
  ReviewRepositoryImp({
    required this.reviewDataSource,
  });

  // create review
  @override
  Future<Either<ReviewFailure, ReviewModel>> createReview(
      ReviewCreateModel reviewCreateModel) async {
        return await reviewDataSource.createReview(reviewCreateModel);
  }

  // update review
  @override
  Future<Either<ReviewFailure, ReviewModel>> updateReview(
      ReviewUpdateModel reviewUpdateModel) async {
        return await reviewDataSource.updateReview(reviewUpdateModel);
  }
  
  @override
  Future<Either<ReviewFailure, Unit>> deleteReview(String id) async {
    return await reviewDataSource.deleteReview(id);
  }
  
  @override
  Future<Either<ReviewFailure, List<ReviewModel>>> getAllReviews() async {
    return await reviewDataSource.getAllReviews();
  }
  
  @override
  Future<Either<ReviewFailure, ReviewModel>> getReview(String id) async {
    return await reviewDataSource.getReview(id);
  }
  
}