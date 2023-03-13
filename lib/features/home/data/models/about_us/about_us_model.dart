import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/aboutus_entity.dart';

part 'about_us_model.freezed.dart';
part 'about_us_model.g.dart';

@freezed
class AboutUsModel with _$AboutUsModel implements AboutUsEntity {
  const factory AboutUsModel({
    @Default(2) int id,
    @Default('')  String title,
    @Default('')  String text,
    @Default('')  String image,
  }) = _AboutUsModel;

  factory AboutUsModel.fromJson(Map<String, dynamic> json) =>
      _$AboutUsModelFromJson(json);
}
