import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim/features/home/domain/entities/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel implements ProductEntity {
  const factory ProductModel({
    @Default(1) int id,
    @Default('') String image,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
