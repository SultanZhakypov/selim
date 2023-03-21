import '../../data/models/news/news_model.dart';

class NewsEntity {
  final int count;
  final String? next;
  final String? previous;
  final List<Result> results;
  NewsEntity({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });
}
