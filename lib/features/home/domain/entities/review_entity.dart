class ReviewEntity {
  final int id;
  final String firstName;
  final String lastName;
  final int category;
  final String image;
  final String text;
  final String categoryName;
  ReviewEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.category,
    required this.image,
    required this.text,
    required this.categoryName,
  });
}
