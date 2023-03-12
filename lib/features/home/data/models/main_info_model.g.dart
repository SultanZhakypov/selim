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
      phoneNumber: (json['phone_number'] as List<dynamic>?)
              ?.map((e) => PhoneNumber.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      socialMedia: (json['social_media'] as List<dynamic>?)
              ?.map((e) => SocialMedia.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      schedule: (json['schedule'] as List<dynamic>?)
              ?.map((e) => Schedule.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
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

_$_PhoneNumber _$$_PhoneNumberFromJson(Map<String, dynamic> json) =>
    _$_PhoneNumber(
      id: json['id'] as int,
      number: json['number'] as String,
      mainInfo: json['mainInfo'] as int,
    );

Map<String, dynamic> _$$_PhoneNumberToJson(_$_PhoneNumber instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'mainInfo': instance.mainInfo,
    };

_$_Schedule _$$_ScheduleFromJson(Map<String, dynamic> json) => _$_Schedule(
      id: json['id'] as int,
      day: json['day'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      mainInfo: json['mainInfo'] as int,
    );

Map<String, dynamic> _$$_ScheduleToJson(_$_Schedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'mainInfo': instance.mainInfo,
    };

_$_SocialMedia _$$_SocialMediaFromJson(Map<String, dynamic> json) =>
    _$_SocialMedia(
      id: json['id'] as int,
      instagram: json['instagram'] as String,
      whatsapp: json['whatsapp'] as String,
      mainInfo: json['mainInfo'] as int,
    );

Map<String, dynamic> _$$_SocialMediaToJson(_$_SocialMedia instance) =>
    <String, dynamic>{
      'id': instance.id,
      'instagram': instance.instagram,
      'whatsapp': instance.whatsapp,
      'mainInfo': instance.mainInfo,
    };
