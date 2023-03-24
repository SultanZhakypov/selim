import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/core/error/dio_exceptions.dart';
import 'package:selim/features/home/data/models/category/categories_model.dart';
import 'package:selim/features/news/data/models/news/news_model.dart';
import 'package:selim/features/news/domain/entities/advantage_entity.dart';

import '../../../home/domain/entities/categories_entity.dart';
import '../models/advantage/advantage_model.dart';

abstract class NewsRepo {
  Future<List<AdvantageOrServiceEntity>> getAdvantages();
  Future<List<AdvantageOrServiceEntity>> getServices();
  Future<List<CategoriesEntity>> getTypeCategoriesInDetail(int id);
  Future<NewsModel> getNews(int offset);
  Future<Result> getDetailNews(int id);
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
  Future<NewsModel> getNews(int offset) async {
    try {
      final response = await _dio.get('news/?limit=2&offset=$offset');

      return NewsModel.fromJson(response.data);
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }

  @override
  Future<Result> getDetailNews(int id) async {
    try {
      final response = await _dio.get('news/$id');

      return Result.fromJson(response.data);
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }

  @override
  Future<List<CategoriesEntity>> getTypeCategoriesInDetail(int id) async {
    try {
      final response = await _dio.get('categories/$id/');
      final typeCategory = response.data;
      return (typeCategory as List)
          .map((e) => CategoriesModel.fromJson(e))
          .toList();
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }
}
