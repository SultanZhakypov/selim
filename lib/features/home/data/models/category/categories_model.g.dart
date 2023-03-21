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
      category: json['category'] as int? ?? 1,
      categoryAdvantages: (json['category_advantages'] as List<dynamic>?)
              ?.map(
                  (e) => CategoryAdvantage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CategoriesModelToJson(_$_CategoriesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'description': instance.description,
      'category': instance.category,
      'category_advantages': instance.categoryAdvantages,
    };

_$_CategoryAdvantage _$$_CategoryAdvantageFromJson(Map<String, dynamic> json) =>
    _$_CategoryAdvantage(
      id: json['id'] as int? ?? 1,
      title: json['title'] as String? ?? '',
      text: json['text'] as String? ?? '',
      category: json['category'] as int? ?? 1,
      categoryName: json['category_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_CategoryAdvantageToJson(
        _$_CategoryAdvantage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
      'category': instance.category,
      'category_name': instance.categoryName,
    };
