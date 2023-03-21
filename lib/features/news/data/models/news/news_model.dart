import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/news_image_entity.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel implements NewsEntity{
  const factory NewsModel({
    @Default(1) int count,
       String? next,
   String? previous,
    @Default([]) List<Result> results,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @Default(1) int id,
    @Default('') String image,
    @Default('') String title,
    @Default('') String text,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'news_images') @Default([]) List<NewsImage> newsImages,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class NewsImage with _$NewsImage {
  const factory NewsImage({
    @Default(1) int id,
    @Default('') String image,
    @Default(1) int news,
  }) = _NewsImage;

  factory NewsImage.fromJson(Map<String, dynamic> json) =>
      _$NewsImageFromJson(json);
}
