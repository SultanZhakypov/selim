import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/review_entity.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel implements ReviewEntity{
  const factory ReviewModel({
    @Default(1) int id,
    @JsonKey(name: 'first_name') @Default('') String firstName,
    @JsonKey(name: 'last_name') @Default('') String lastName,
    @Default(1) int category,
    @Default('') String image,
    @Default('') String text,
    @JsonKey(name: 'category_name') @Default('') String categoryName,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
