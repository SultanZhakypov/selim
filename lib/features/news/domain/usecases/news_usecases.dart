import 'package:injectable/injectable.dart';
import 'package:selim/features/news/domain/entities/news_image_entity.dart';
import '../../data/models/news/news_model.dart';
import '../../data/repositories/news_repo.dart';
import '../entities/advantage_entity.dart';

abstract class NewsUseCase {
  Future<List<AdvantageOrServiceEntity>> getAdvanteges();
  Future<List<AdvantageOrServiceEntity>> getServices();
  Future<List<NewsModel>> getNews();
  Future<NewsEntity> getDetailNews(int id);
}

@LazySingleton()
class NewsUseCaseImpl implements NewsUseCase {
  NewsUseCaseImpl(this._newsRepo);
  final NewsRepo _newsRepo;

  @override
  Future<List<AdvantageOrServiceEntity>> getAdvanteges() async {
    try {
      final result = await _newsRepo.getAdvantages();
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<AdvantageOrServiceEntity>> getServices() async {
    try {
      final result = await _newsRepo.getServices();
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<NewsModel>> getNews() async {
    try {
      final result = await _newsRepo.getNews();
      return result;
    } catch (e) {
      rethrow;
    }
  }
  @override
  Future<NewsEntity> getDetailNews(int id) async {
    try {
      final result = await _newsRepo.getDetailNews(id);
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
