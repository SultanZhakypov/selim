import 'package:injectable/injectable.dart';
import 'package:selim/features/home/data/models/feedback/feedback_model.dart';
import 'package:selim/features/home/data/repositories/home_repo.dart';
import 'package:selim/features/home/domain/entities/maininfo_entity.dart';

import '../../data/models/main_info/main_info_model.dart';
import '../entities/aboutus_entity.dart';

abstract class HomeUseCase {
  Future<MainInfoEntity> getMainInfo();
  Future<AboutUsEntity> getAboutUs();
  Future<List<PhoneNumber>> getPhoneNumber();
  Future<List<Schedule>> getSchedule();
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
  Future<List<PhoneNumber>> getPhoneNumber() async {
    try {
      final result = await _homeRepo.getPhoneNumber();
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Schedule>> getSchedule() async {
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
}
