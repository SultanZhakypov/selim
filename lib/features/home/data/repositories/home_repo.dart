import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/core/error/dio_exceptions.dart';
import 'package:selim/features/home/data/models/main_info_model.dart';
import 'package:selim/features/home/domain/entities/maininfo_entity.dart';

abstract class HomeRepo {
  Future<List<MainInfoEntity>> getMainInfo();
}

@LazySingleton(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this._dio);
  final Dio _dio;
  @override
  Future<List<MainInfoModel>> getMainInfo() async {
    try {
      final response = await _dio.get('main_info/main_info/');
      final info = response.data;
      return (info as List).map((e) => MainInfoModel.fromJson(e)).toList();
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }
}
