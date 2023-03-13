import 'package:injectable/injectable.dart';
import 'package:selim/features/home/data/repositories/home_repo.dart';
import 'package:selim/features/home/domain/entities/maininfo_entity.dart';

import '../entities/aboutus_entity.dart';

abstract class HomeUseCase {
  Future<MainInfoEntity> getMainInfo();
  Future<AboutUsEntity> getAboutUs();
}

@LazySingleton()
class HomeUsecaseImpl implements HomeUseCase {
  HomeUsecaseImpl(this._homeRepo);
  final HomeRepo _homeRepo;

  @override
  Future<MainInfoEntity> getMainInfo() async {
    try {
      final result = await _homeRepo.getMainInfo();
      return result.first;
    } catch (e) {
      rethrow;
    }
  }
  
  @override
  Future<AboutUsEntity> getAboutUs() async {
    try {
      final result = await _homeRepo.getAboutUs();
      return result.first;
    } catch (e) {
      rethrow;
    }
  }
}
