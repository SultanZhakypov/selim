// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainInfoModel _$MainInfoModelFromJson(Map<String, dynamic> json) {
  return _MainInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MainInfoModel {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  List<dynamic> get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_media')
  List<dynamic> get socialMedia => throw _privateConstructorUsedError;
  List<dynamic> get schedule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainInfoModelCopyWith<MainInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainInfoModelCopyWith<$Res> {
  factory $MainInfoModelCopyWith(
          MainInfoModel value, $Res Function(MainInfoModel) then) =
      _$MainInfoModelCopyWithImpl<$Res, MainInfoModel>;
  @useResult
  $Res call(
      {String title,
      String subtitle,
      String image,
      @JsonKey(name: 'phone_number') List<dynamic> phoneNumber,
      @JsonKey(name: 'social_media') List<dynamic> socialMedia,
      List<dynamic> schedule});
}

/// @nodoc
class _$MainInfoModelCopyWithImpl<$Res, $Val extends MainInfoModel>
    implements $MainInfoModelCopyWith<$Res> {
  _$MainInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? image = null,
    Object? phoneNumber = null,
    Object? socialMedia = null,
    Object? schedule = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      socialMedia: null == socialMedia
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainInfoModelCopyWith<$Res>
    implements $MainInfoModelCopyWith<$Res> {
  factory _$$_MainInfoModelCopyWith(
          _$_MainInfoModel value, $Res Function(_$_MainInfoModel) then) =
      __$$_MainInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String subtitle,
      String image,
      @JsonKey(name: 'phone_number') List<dynamic> phoneNumber,
      @JsonKey(name: 'social_media') List<dynamic> socialMedia,
      List<dynamic> schedule});
}

/// @nodoc
class __$$_MainInfoModelCopyWithImpl<$Res>
    extends _$MainInfoModelCopyWithImpl<$Res, _$_MainInfoModel>
    implements _$$_MainInfoModelCopyWith<$Res> {
  __$$_MainInfoModelCopyWithImpl(
      _$_MainInfoModel _value, $Res Function(_$_MainInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? image = null,
    Object? phoneNumber = null,
    Object? socialMedia = null,
    Object? schedule = null,
  }) {
    return _then(_$_MainInfoModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value._phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      socialMedia: null == socialMedia
          ? _value._socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainInfoModel implements _MainInfoModel {
  const _$_MainInfoModel(
      {this.title = '',
      this.subtitle = '',
      this.image = '',
      @JsonKey(name: 'phone_number') final List<dynamic> phoneNumber = const [],
      @JsonKey(name: 'social_media') final List<dynamic> socialMedia = const [],
      final List<dynamic> schedule = const []})
      : _phoneNumber = phoneNumber,
        _socialMedia = socialMedia,
        _schedule = schedule;

  factory _$_MainInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_MainInfoModelFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String subtitle;
  @override
  @JsonKey()
  final String image;
  final List<dynamic> _phoneNumber;
  @override
  @JsonKey(name: 'phone_number')
  List<dynamic> get phoneNumber {
    if (_phoneNumber is EqualUnmodifiableListView) return _phoneNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phoneNumber);
  }

  final List<dynamic> _socialMedia;
  @override
  @JsonKey(name: 'social_media')
  List<dynamic> get socialMedia {
    if (_socialMedia is EqualUnmodifiableListView) return _socialMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialMedia);
  }

  final List<dynamic> _schedule;
  @override
  @JsonKey()
  List<dynamic> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  String toString() {
    return 'MainInfoModel(title: $title, subtitle: $subtitle, image: $image, phoneNumber: $phoneNumber, socialMedia: $socialMedia, schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainInfoModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._phoneNumber, _phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other._socialMedia, _socialMedia) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      subtitle,
      image,
      const DeepCollectionEquality().hash(_phoneNumber),
      const DeepCollectionEquality().hash(_socialMedia),
      const DeepCollectionEquality().hash(_schedule));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainInfoModelCopyWith<_$_MainInfoModel> get copyWith =>
      __$$_MainInfoModelCopyWithImpl<_$_MainInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainInfoModelToJson(
      this,
    );
  }
}

abstract class _MainInfoModel implements MainInfoModel {
  const factory _MainInfoModel(
      {final String title,
      final String subtitle,
      final String image,
      @JsonKey(name: 'phone_number') final List<dynamic> phoneNumber,
      @JsonKey(name: 'social_media') final List<dynamic> socialMedia,
      final List<dynamic> schedule}) = _$_MainInfoModel;

  factory _MainInfoModel.fromJson(Map<String, dynamic> json) =
      _$_MainInfoModel.fromJson;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get image;
  @override
  @JsonKey(name: 'phone_number')
  List<dynamic> get phoneNumber;
  @override
  @JsonKey(name: 'social_media')
  List<dynamic> get socialMedia;
  @override
  List<dynamic> get schedule;
  @override
  @JsonKey(ignore: true)
  _$$_MainInfoModelCopyWith<_$_MainInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
