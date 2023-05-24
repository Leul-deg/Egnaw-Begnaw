import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_create_model.freezed.dart';
part 'review_create_model.g.dart';

@freezed
class ReviewCreateModel with _$ReviewCreateModel {
  const factory ReviewCreateModel({
    required String reviewerId,
    required String reviewText,
    required String eventId,
  }) = _ReviewCreateModel;

  factory ReviewCreateModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewCreateModelFromJson(json);
}