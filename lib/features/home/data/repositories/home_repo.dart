import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/core/error/dio_exceptions.dart';
import 'package:selim/features/home/data/models/feedback/feedback_model.dart';
import 'package:selim/features/home/data/models/product/product_model.dart';
import 'package:selim/features/home/data/models/main_info/main_info_model.dart';
import 'package:selim/features/home/domain/entities/maininfo_entity.dart';

import '../../domain/entities/aboutus_entity.dart';
import '../../domain/entities/product_entity.dart';
import '../models/about_us/about_us_model.dart';

abstract class HomeRepo {
  Future<List<MainInfoEntity>> getMainInfo();
  Future<List<AboutUsEntity>> getAboutUs();
  Future<List<PhoneNumber>> getPhoneNumber();
  Future<List<Schedule>> getSchedule();
  Future<List<ProductEntity>> getProduct();
  Future<FeedbackModel> postFeedBack({
    required String name,
    required String message,
    required String phone,
  });
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

  @override
  Future<List<AboutUsModel>> getAboutUs() async {
    try {
      final response = await _dio.get('main_info/about_us/');
      final aboutus = response.data;
      return (aboutus as List).map((e) => AboutUsModel.fromJson(e)).toList();
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }

  @override
  Future<List<PhoneNumber>> getPhoneNumber() async {
    try {
      final response = await _dio.get('main_info/phone_number/');
      final number = response.data;
      return (number as List).map((e) => PhoneNumber.fromJson(e)).toList();
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }

  @override
  Future<List<Schedule>> getSchedule() async {
    try {
      final response = await _dio.get('main_info/schedule/');
      final schedule = response.data;
      return (schedule as List).map((e) => Schedule.fromJson(e)).toList();
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }

  @override
  Future<List<ProductEntity>> getProduct() async {
    try {
      final response = await _dio.get('products/');
      final image = response.data;
      return (image as List).map((e) => ProductModel.fromJson(e)).toList();
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }

  @override
  Future<FeedbackModel> postFeedBack(
      {required String name,
      required String message,
      required String phone}) async {
    try {
      final response = await _dio.post('feedback/', data: {
        'name': name,
        'number': phone,
        'message': message,
      });

      return FeedbackModel.fromJson(response.data);
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    }
  }
}
