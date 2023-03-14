// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedBackModel _$$_FeedBackModelFromJson(Map<String, dynamic> json) =>
    _$_FeedBackModel(
      id: json['id'] as int? ?? 1,
      name: json['name'] as String? ?? '',
      message: json['message'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$_FeedBackModelToJson(_$_FeedBackModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'message': instance.message,
      'createdAt': instance.createdAt,
    };
