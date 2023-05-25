import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_update_model.freezed.dart';
part 'review_update_model.g.dart';

@freezed
class ReviewUpdateModel with _$ReviewUpdateModel {
  const factory ReviewUpdateModel({
    required String id,
    required String reviewText,
  }) = _ReviewUpdateModel;

  factory ReviewUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewUpdateModelFromJson(json);
}