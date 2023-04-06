// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailCategoryModel _$$_DetailCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_DetailCategoryModel(
      id: json['id'] as int? ?? 0,
      categoryAdvantages: (json['categoryAdvantages'] as List<dynamic>?)
              ?.map(
                  (e) => CategoryAdvantage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      childCategory: (json['child_category'] as List<dynamic>?)
              ?.map((e) => ChildCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      title: json['title'] as String? ?? '',
      image: json['image'] as String? ?? '',
      description: json['description'] as String? ?? '',
      parentCategory: json['parent_category'] as int? ?? 0,
    );

Map<String, dynamic> _$$_DetailCategoryModelToJson(
        _$_DetailCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryAdvantages': instance.categoryAdvantages,
      'child_category': instance.childCategory,
      'title': instance.title,
      'image': instance.image,
      'description': instance.description,
      'parent_category': instance.parentCategory,
    };

_$_CategoryAdvantage _$$_CategoryAdvantageFromJson(Map<String, dynamic> json) =>
    _$_CategoryAdvantage(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      text: json['text'] as String? ?? '',
      category: json['category'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CategoryAdvantageToJson(
        _$_CategoryAdvantage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
      'category': instance.category,
    };

_$_ChildCategory _$$_ChildCategoryFromJson(Map<String, dynamic> json) =>
    _$_ChildCategory(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      image: json['image'] as String? ?? '',
      description: json['description'] as String? ?? '',
      parentCategory: json['parent_category'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ChildCategoryToJson(_$_ChildCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'description': instance.description,
      'parent_category': instance.parentCategory,
    };
