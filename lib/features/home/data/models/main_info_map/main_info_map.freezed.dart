// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_info_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainInfoMap _$MainInfoMapFromJson(Map<String, dynamic> json) {
  return _MainInfoMap.fromJson(json);
}

/// @nodoc
mixin _$MainInfoMap {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'station_name')
  String get stationName => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainInfoMapCopyWith<MainInfoMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainInfoMapCopyWith<$Res> {
  factory $MainInfoMapCopyWith(
          MainInfoMap value, $Res Function(MainInfoMap) then) =
      _$MainInfoMapCopyWithImpl<$Res, MainInfoMap>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'station_name') String stationName,
      double latitude,
      double longitude});
}

/// @nodoc
class _$MainInfoMapCopyWithImpl<$Res, $Val extends MainInfoMap>
    implements $MainInfoMapCopyWith<$Res> {
  _$MainInfoMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stationName = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainInfoMapCopyWith<$Res>
    implements $MainInfoMapCopyWith<$Res> {
  factory _$$_MainInfoMapCopyWith(
          _$_MainInfoMap value, $Res Function(_$_MainInfoMap) then) =
      __$$_MainInfoMapCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'station_name') String stationName,
      double latitude,
      double longitude});
}

/// @nodoc
class __$$_MainInfoMapCopyWithImpl<$Res>
    extends _$MainInfoMapCopyWithImpl<$Res, _$_MainInfoMap>
    implements _$$_MainInfoMapCopyWith<$Res> {
  __$$_MainInfoMapCopyWithImpl(
      _$_MainInfoMap _value, $Res Function(_$_MainInfoMap) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stationName = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_MainInfoMap(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainInfoMap implements _MainInfoMap {
  const _$_MainInfoMap(
      {this.id = 0,
      @JsonKey(name: 'station_name') this.stationName = '',
      this.latitude = 0.1,
      this.longitude = 0.1});

  factory _$_MainInfoMap.fromJson(Map<String, dynamic> json) =>
      _$$_MainInfoMapFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: 'station_name')
  final String stationName;
  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;

  @override
  String toString() {
    return 'MainInfoMap(id: $id, stationName: $stationName, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainInfoMap &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, stationName, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainInfoMapCopyWith<_$_MainInfoMap> get copyWith =>
      __$$_MainInfoMapCopyWithImpl<_$_MainInfoMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainInfoMapToJson(
      this,
    );
  }
}

abstract class _MainInfoMap implements MainInfoMap {
  const factory _MainInfoMap(
      {final int id,
      @JsonKey(name: 'station_name') final String stationName,
      final double latitude,
      final double longitude}) = _$_MainInfoMap;

  factory _MainInfoMap.fromJson(Map<String, dynamic> json) =
      _$_MainInfoMap.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'station_name')
  String get stationName;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_MainInfoMapCopyWith<_$_MainInfoMap> get copyWith =>
      throw _privateConstructorUsedError;
}
