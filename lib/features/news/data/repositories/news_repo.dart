import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/core/error/dio_exceptions.dart';
import 'package:selim/features/news/domain/entities/advantage_entity.dart';

import '../models/advantage_model.dart';

abstract class NewsRepo {
  Future<List<AdvantageOrServiceEntity>> getAdvantages();
  Future<List<AdvantageOrServiceEntity>> getServices();
}

@LazySingleton(as: NewsRepo)
class NewsRepoImpl implements NewsRepo {
  NewsRepoImpl(this._dio);
  final Dio _dio;
  @override
  Future<List<AdvantageOrServiceModel>> getAdvantages() async {
    try {
      final response = await _dio.get('advantages/');
      final info = response.data;
      return (info as List)
          .map((e) => AdvantageOrServiceModel.fromJson(e))
          .toList();
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }
  
  @override
  Future<List<AdvantageOrServiceEntity>> getServices() async {
    try {
      final response = await _dio.get('services/');
      final info = response.data;
      return (info as List)
          .map((e) => AdvantageOrServiceModel.fromJson(e))
          .toList();
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }
}
