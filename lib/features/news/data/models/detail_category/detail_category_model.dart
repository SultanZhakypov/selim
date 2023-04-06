import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim/features/news/domain/entities/detail_category_entity.dart';
part 'detail_category_model.freezed.dart';
part 'detail_category_model.g.dart';

@freezed
class DetailCategoryModel with _$DetailCategoryModel implements DetailCategoryEntity{
  const factory DetailCategoryModel({
    @Default(0) int id,
    @Default([]) List<CategoryAdvantage> categoryAdvantages,
    @JsonKey(name: 'child_category')
    @Default([])
        List<ChildCategory> childCategory,
    @Default('') String title,
    @Default('') String image,
    @Default('') String description,
    @JsonKey(name: 'parent_category') @Default(0) int parentCategory,
  }) = _DetailCategoryModel;

  factory DetailCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$DetailCategoryModelFromJson(json);
}

@freezed
class CategoryAdvantage with _$CategoryAdvantage {
  const factory CategoryAdvantage({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String text,
    @Default(0) int category,
  }) = _CategoryAdvantage;

  factory CategoryAdvantage.fromJson(Map<String, dynamic> json) =>
      _$CategoryAdvantageFromJson(json);
}

@freezed
class ChildCategory with _$ChildCategory {
  const factory ChildCategory({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String image,
    @Default('') String description,
    @JsonKey(name: 'parent_category') @Default(0) int parentCategory,
  }) = _ChildCategory;

  factory ChildCategory.fromJson(Map<String, dynamic> json) =>
      _$ChildCategoryFromJson(json);
}
