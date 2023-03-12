import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/maininfo_entity.dart';

part 'main_info_model.freezed.dart';
part 'main_info_model.g.dart';

@freezed
class MainInfoModel with _$MainInfoModel implements MainInfoEntity {
  const factory MainInfoModel({
    @Default('') String title,
    @Default('') String subtitle,
    @Default('') String image,
    @JsonKey(name: 'phone_number') @Default([]) List<PhoneNumber> phoneNumber,
    @JsonKey(name: 'social_media') @Default([]) List<SocialMedia> socialMedia,
    @Default([]) List<Schedule> schedule,
  }) = _MainInfoModel;

  factory MainInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MainInfoModelFromJson(json);
}

@freezed
class PhoneNumber with _$PhoneNumber {
  const factory PhoneNumber({
    required int id,
    required String number,
    required int mainInfo,
  }) = _PhoneNumber;

  factory PhoneNumber.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberFromJson(json);
}

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required int id,
    required String day,
    required String startTime,
    required String endTime,
    required int mainInfo,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

@freezed
class SocialMedia with _$SocialMedia {
  const factory SocialMedia({
    required int id,
    required String instagram,
    required String whatsapp,
    required int mainInfo,
  }) = _SocialMedia;

  factory SocialMedia.fromJson(Map<String, dynamic> json) =>
      _$SocialMediaFromJson(json);
}
