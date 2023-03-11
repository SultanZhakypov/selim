import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim/features/home/domain/entities/maininfo_entity.dart';

part 'main_info_model.freezed.dart';
part 'main_info_model.g.dart';

@freezed
class MainInfoModel with _$MainInfoModel implements MainInfoEntity{
    const factory MainInfoModel({
 @Default('') String title,
    @Default('') String subtitle,
    @Default('') String image,
    @JsonKey(name: 'phone_number') @Default([]) List<dynamic> phoneNumber,
    @JsonKey(name: 'social_media') @Default([]) List<dynamic> socialMedia,
    @Default([]) List<dynamic> schedule,
    }) = _MainInfoModel;

    factory MainInfoModel.fromJson(Map<String, dynamic> json) => _$MainInfoModelFromJson(json);
}

