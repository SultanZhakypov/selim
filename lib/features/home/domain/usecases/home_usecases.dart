import 'package:injectable/injectable.dart';
import 'package:selim/features/home/data/models/feedback/feedback_model.dart';
import 'package:selim/features/home/data/repositories/home_repo.dart';
import 'package:selim/features/home/domain/entities/categories_entity.dart';
import 'package:selim/features/home/domain/entities/maininfo_entity.dart';
import '../../data/models/main_info/main_info_model.dart';
import '../entities/aboutus_entity.dart';
import '../entities/product_entity.dart';
import '../entities/review_entity.dart';

typedef Home<T> = Future<List<T>>;

abstract class HomeUseCase {
  Future<MainInfoEntity> getMainInfo();
  Future<AboutUsEntity> getAboutUs();
  Home<PhoneNumber> getPhoneNumber();
  Home<Schedule> getSchedule();
  Home<ProductEntity> getProduct();
  Home<CategoriesEntity> getCategories();
  Home<ReviewEntity> getReview();
  Future<FeedbackModel> postFeedBack({
    required String name,
    required String message,
    required String phone,
  });
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

  @override
  Home<PhoneNumber> getPhoneNumber() async {
    try {
      final result = await _homeRepo.getPhoneNumber();
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Home<ProductEntity> getProduct() async {
    try {
      final result = await _homeRepo.getProduct();
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Home<Schedule> getSchedule() async {
    try {
      final result = await _homeRepo.getSchedule();
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<FeedbackModel> postFeedBack({
    required String name,
    required String message,
    required String phone,
  }) async {
    try {
      final result = await _homeRepo.postFeedBack(
          name: name, message: message, phone: phone);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Home<CategoriesEntity> getCategories() async {
    try {
      final result = await _homeRepo.getCategories();
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Home<ReviewEntity> getReview() async {
    try {
      final result = await _homeRepo.getReview();
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
