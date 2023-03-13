import 'package:injectable/injectable.dart';
import '../../data/repositories/news_repo.dart';
import '../entities/advantage_entity.dart';

abstract class NewsUseCase {
  Future<List<AdvantageOrServiceEntity>> getAdvanteges();
  Future<List<AdvantageOrServiceEntity>> getServices();
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
}
