import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim/features/home/domain/entities/categories_entity.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel implements CategoriesEntity {
  const factory CategoriesModel({
    @Default(1) int id,
    @Default('') String title,
    @Default('') String image,
    @Default('') String description,
    @Default(1) int category,
    @JsonKey(name: 'category_advantages')
    @Default([])
        List<CategoryAdvantage> categoryAdvantages,
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}

@freezed
class CategoryAdvantage with _$CategoryAdvantage {
  const factory CategoryAdvantage({
    @Default(1) int id,
    @Default('') String title,
    @Default('') String text,
    @Default(1) int category,
    @JsonKey(name: 'category_name') @Default('') String categoryName,
  }) = _CategoryAdvantage;

  factory CategoryAdvantage.fromJson(Map<String, dynamic> json) =>
      _$CategoryAdvantageFromJson(json);
}
