// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewModel _$$_ReviewModelFromJson(Map<String, dynamic> json) =>
    _$_ReviewModel(
      id: json['id'] as int? ?? 1,
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      category: json['category'] as int? ?? 1,
      image: json['image'] as String? ?? '',
      text: json['text'] as String? ?? '',
      categoryName: json['category_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_ReviewModelToJson(_$_ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'category': instance.category,
      'image': instance.image,
      'text': instance.text,
      'category_name': instance.categoryName,
    };
