class CategoriesEntity {
  final int id;
  final String title;
  final String image;
  final String description;
  final int parentCategory;

  CategoriesEntity({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
    required this.parentCategory,
  });
}
