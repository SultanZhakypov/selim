// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModel _$$_NewsModelFromJson(Map<String, dynamic> json) => _$_NewsModel(
      count: json['count'] as int? ?? 1,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_NewsModelToJson(_$_NewsModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as int? ?? 1,
      image: json['image'] as String? ?? '',
      title: json['title'] as String? ?? '',
      text: json['text'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      newsImages: (json['news_images'] as List<dynamic>?)
              ?.map((e) => NewsImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'text': instance.text,
      'created_at': instance.createdAt,
      'news_images': instance.newsImages,
    };

_$_NewsImage _$$_NewsImageFromJson(Map<String, dynamic> json) => _$_NewsImage(
      id: json['id'] as int? ?? 1,
      image: json['image'] as String? ?? '',
      news: json['news'] as int? ?? 1,
    );

Map<String, dynamic> _$$_NewsImageToJson(_$_NewsImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'news': instance.news,
    };
