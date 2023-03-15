import '../../data/models/news/news_model.dart';

class NewsEntity {
  final int id;
  final String image;
  final String title;
  final String text;
  final String createdAt;
  final List<NewsImage> newsImages;
  NewsEntity({
    required this.id,
    required this.image,
    required this.title,
    required this.text,
    required this.createdAt,
    required this.newsImages,
  });
}
