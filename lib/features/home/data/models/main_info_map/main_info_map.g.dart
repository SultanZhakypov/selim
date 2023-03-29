// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_info_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainInfoMap _$$_MainInfoMapFromJson(Map<String, dynamic> json) =>
    _$_MainInfoMap(
      id: json['id'] as int? ?? 0,
      stationName: json['station_name'] as String? ?? '',
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.1,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.1,
    );

Map<String, dynamic> _$$_MainInfoMapToJson(_$_MainInfoMap instance) =>
    <String, dynamic>{
      'id': instance.id,
      'station_name': instance.stationName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
