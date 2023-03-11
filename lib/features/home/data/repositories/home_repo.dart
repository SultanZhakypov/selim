import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/core/dio_settings/dio_settings.dart';
import 'package:selim/core/error/dio_exceptions.dart';
import 'package:selim/features/home/data/models/main_info_model.dart';
import 'package:selim/features/home/domain/entities/maininfo_entity.dart';

abstract class HomeRepo {
  Future<MainInfoEntity> getMainInfo();
}

@LazySingleton(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this._dioSettings);
  final DioSettings _dioSettings;
  @override
  Future<MainInfoEntity> getMainInfo() async {
    try {
      final response = await _dioSettings.dio.get('main_info/main_info/');
      return MainInfoModel.fromJson(response.data);
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }
}
