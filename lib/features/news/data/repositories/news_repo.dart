import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/core/error/dio_exceptions.dart';
import 'package:selim/features/news/data/models/news/news_model.dart';
import 'package:selim/features/news/domain/entities/advantage_entity.dart';
import 'package:selim/features/news/domain/entities/news_image_entity.dart';

import '../models/advantage/advantage_model.dart';

abstract class NewsRepo {
  Future<List<AdvantageOrServiceEntity>> getAdvantages();
  Future<List<AdvantageOrServiceEntity>> getServices();
  Future<List<NewsModel>> getNews();
  Future<NewsEntity> getDetailNews(int id);
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

  @override
  Future<List<NewsModel>> getNews() async {
    try {
      final response = await _dio.get('news/');
      final info = response.data;
      return (info as List).map((e) => NewsModel.fromJson(e)).toList();
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }
  @override
  Future<NewsModel> getDetailNews(int id) async {
    try {
      final response = await _dio.get('news/$id');
 
      return NewsModel.fromJson(response.data);
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }
}
