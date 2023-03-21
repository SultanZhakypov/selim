import '../../data/models/category/categories_model.dart';

class CategoriesEntity {
  final int id;
  final String title;
  final String image;
  final String description;
  final int category;

  final List<CategoryAdvantage> categoryAdvantages;
  CategoriesEntity({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
    required this.category,
    required this.categoryAdvantages,
  });
}
