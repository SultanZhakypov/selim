// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoriesModel _$$_CategoriesModelFromJson(Map<String, dynamic> json) =>
    _$_CategoriesModel(
      id: json['id'] as int? ?? 1,
      title: json['title'] as String? ?? '',
      image: json['image'] as String? ?? '',
      description: json['description'] as String? ?? '',
      parentCategory: json['parent_category'] as int? ?? 1,
    );

Map<String, dynamic> _$$_CategoriesModelToJson(_$_CategoriesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'description': instance.description,
      'parent_category': instance.parentCategory,
    };
