import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/advantage_entity.dart';

part 'advantage_model.freezed.dart';
part 'advantage_model.g.dart';

@freezed
class AdvantageOrServiceModel
    with _$AdvantageOrServiceModel
    implements AdvantageOrServiceEntity {
  const factory AdvantageOrServiceModel({
    @Default(2) int id,
    @Default('') String image,
    @Default('') String text,
  }) = _AdvantageModel;

  factory AdvantageOrServiceModel.fromJson(Map<String, dynamic> json) =>
      _$AdvantageModelFromJson(json);
}
