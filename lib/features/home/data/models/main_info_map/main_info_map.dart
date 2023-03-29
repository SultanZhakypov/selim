import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:selim/features/home/domain/entities/main_info_map_entity.dart';

part 'main_info_map.freezed.dart';
part 'main_info_map.g.dart';

@freezed
class MainInfoMap with _$MainInfoMap implements MainInfoMapEntity {
  const factory MainInfoMap({
    @Default(0) int id,
   @JsonKey(name: 'station_name') @Default('') String stationName,
    @Default(0.1) double latitude,
    @Default(0.1) double longitude,
  }) = _MainInfoMap;

  factory MainInfoMap.fromJson(Map<String, dynamic> json) =>
      _$MainInfoMapFromJson(json);
}
