// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainInfoModel _$$_MainInfoModelFromJson(Map<String, dynamic> json) =>
    _$_MainInfoModel(
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      image: json['image'] as String? ?? '',
      phoneNumber: json['phone_number'] as List<dynamic>? ?? const [],
      socialMedia: json['social_media'] as List<dynamic>? ?? const [],
      schedule: json['schedule'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$_MainInfoModelToJson(_$_MainInfoModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image': instance.image,
      'phone_number': instance.phoneNumber,
      'social_media': instance.socialMedia,
      'schedule': instance.schedule,
    };
