import 'package:selim/features/news/data/models/detail_category/detail_category_model.dart';

class DetailCategoryEntity {
  final int id;
  final int parentCategory;
  final String title;
  final String image;
  final String description;
  final List<CategoryAdvantage> categoryAdvantages;
  final List<ChildCategory> childCategory;
  DetailCategoryEntity({
    required this.id,
    required this.parentCategory,
    required this.title,
    required this.image,
    required this.description,
    required this.categoryAdvantages,
    required this.childCategory,
  });
}
