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
    @JsonKey(name:'parent_category')@Default(1) int parentCategory,
    
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}

