import 'package:injectable/injectable.dart';
import 'package:selim/features/home/data/repositories/home_repo.dart';
import 'package:selim/features/home/domain/entities/maininfo_entity.dart';

abstract class HomeUseCase {
  getMainInfo();
  get mainInfo;
}

@Singleton(as: HomeUseCase)
class HomeUsecaseImpl implements HomeUseCase {
  HomeUsecaseImpl(this._homeRepo);
  final HomeRepo _homeRepo;
  late MainInfoEntity mainInfoEntity;

  @override
  getMainInfo() async {
    try {
      mainInfoEntity = await _homeRepo.getMainInfo();
    } catch (e) {
      rethrow;
    }
  }

  @override
  get mainInfo => mainInfoEntity;
}
