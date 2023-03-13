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
  List<PhoneNumber> get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_media')
  List<SocialMedia> get socialMedia => throw _privateConstructorUsedError;
  List<Schedule> get schedule => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'phone_number') List<PhoneNumber> phoneNumber,
      @JsonKey(name: 'social_media') List<SocialMedia> socialMedia,
      List<Schedule> schedule});
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
              as List<PhoneNumber>,
      socialMedia: null == socialMedia
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as List<SocialMedia>,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
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
      @JsonKey(name: 'phone_number') List<PhoneNumber> phoneNumber,
      @JsonKey(name: 'social_media') List<SocialMedia> socialMedia,
      List<Schedule> schedule});
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
              as List<PhoneNumber>,
      socialMedia: null == socialMedia
          ? _value._socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as List<SocialMedia>,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
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
      @JsonKey(name: 'phone_number')
          final List<PhoneNumber> phoneNumber = const [],
      @JsonKey(name: 'social_media')
          final List<SocialMedia> socialMedia = const [],
      final List<Schedule> schedule = const []})
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
  final List<PhoneNumber> _phoneNumber;
  @override
  @JsonKey(name: 'phone_number')
  List<PhoneNumber> get phoneNumber {
    if (_phoneNumber is EqualUnmodifiableListView) return _phoneNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phoneNumber);
  }

  final List<SocialMedia> _socialMedia;
  @override
  @JsonKey(name: 'social_media')
  List<SocialMedia> get socialMedia {
    if (_socialMedia is EqualUnmodifiableListView) return _socialMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialMedia);
  }

  final List<Schedule> _schedule;
  @override
  @JsonKey()
  List<Schedule> get schedule {
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
      @JsonKey(name: 'phone_number') final List<PhoneNumber> phoneNumber,
      @JsonKey(name: 'social_media') final List<SocialMedia> socialMedia,
      final List<Schedule> schedule}) = _$_MainInfoModel;

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
  List<PhoneNumber> get phoneNumber;
  @override
  @JsonKey(name: 'social_media')
  List<SocialMedia> get socialMedia;
  @override
  List<Schedule> get schedule;
  @override
  @JsonKey(ignore: true)
  _$$_MainInfoModelCopyWith<_$_MainInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PhoneNumber _$PhoneNumberFromJson(Map<String, dynamic> json) {
  return _PhoneNumber.fromJson(json);
}

/// @nodoc
mixin _$PhoneNumber {
  int get id => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_info')
  int get mainInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneNumberCopyWith<PhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberCopyWith<$Res> {
  factory $PhoneNumberCopyWith(
          PhoneNumber value, $Res Function(PhoneNumber) then) =
      _$PhoneNumberCopyWithImpl<$Res, PhoneNumber>;
  @useResult
  $Res call({int id, String number, @JsonKey(name: 'main_info') int mainInfo});
}

/// @nodoc
class _$PhoneNumberCopyWithImpl<$Res, $Val extends PhoneNumber>
    implements $PhoneNumberCopyWith<$Res> {
  _$PhoneNumberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? mainInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      mainInfo: null == mainInfo
          ? _value.mainInfo
          : mainInfo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneNumberCopyWith<$Res>
    implements $PhoneNumberCopyWith<$Res> {
  factory _$$_PhoneNumberCopyWith(
          _$_PhoneNumber value, $Res Function(_$_PhoneNumber) then) =
      __$$_PhoneNumberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String number, @JsonKey(name: 'main_info') int mainInfo});
}

/// @nodoc
class __$$_PhoneNumberCopyWithImpl<$Res>
    extends _$PhoneNumberCopyWithImpl<$Res, _$_PhoneNumber>
    implements _$$_PhoneNumberCopyWith<$Res> {
  __$$_PhoneNumberCopyWithImpl(
      _$_PhoneNumber _value, $Res Function(_$_PhoneNumber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? mainInfo = null,
  }) {
    return _then(_$_PhoneNumber(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      mainInfo: null == mainInfo
          ? _value.mainInfo
          : mainInfo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhoneNumber implements _PhoneNumber {
  const _$_PhoneNumber(
      {this.id = 1,
      this.number = '',
      @JsonKey(name: 'main_info') this.mainInfo = 1});

  factory _$_PhoneNumber.fromJson(Map<String, dynamic> json) =>
      _$$_PhoneNumberFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String number;
  @override
  @JsonKey(name: 'main_info')
  final int mainInfo;

  @override
  String toString() {
    return 'PhoneNumber(id: $id, number: $number, mainInfo: $mainInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumber &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.mainInfo, mainInfo) ||
                other.mainInfo == mainInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, mainInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberCopyWith<_$_PhoneNumber> get copyWith =>
      __$$_PhoneNumberCopyWithImpl<_$_PhoneNumber>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhoneNumberToJson(
      this,
    );
  }
}

abstract class _PhoneNumber implements PhoneNumber {
  const factory _PhoneNumber(
      {final int id,
      final String number,
      @JsonKey(name: 'main_info') final int mainInfo}) = _$_PhoneNumber;

  factory _PhoneNumber.fromJson(Map<String, dynamic> json) =
      _$_PhoneNumber.fromJson;

  @override
  int get id;
  @override
  String get number;
  @override
  @JsonKey(name: 'main_info')
  int get mainInfo;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneNumberCopyWith<_$_PhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  int get id => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_info')
  int get mainInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call(
      {int id,
      String day,
      String startTime,
      String endTime,
      @JsonKey(name: 'main_info') int mainInfo});
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? mainInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      mainInfo: null == mainInfo
          ? _value.mainInfo
          : mainInfo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$$_ScheduleCopyWith(
          _$_Schedule value, $Res Function(_$_Schedule) then) =
      __$$_ScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String day,
      String startTime,
      String endTime,
      @JsonKey(name: 'main_info') int mainInfo});
}

/// @nodoc
class __$$_ScheduleCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$_Schedule>
    implements _$$_ScheduleCopyWith<$Res> {
  __$$_ScheduleCopyWithImpl(
      _$_Schedule _value, $Res Function(_$_Schedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? mainInfo = null,
  }) {
    return _then(_$_Schedule(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      mainInfo: null == mainInfo
          ? _value.mainInfo
          : mainInfo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Schedule implements _Schedule {
  const _$_Schedule(
      {this.id = 1,
      this.day = '',
      this.startTime = '',
      this.endTime = '',
      @JsonKey(name: 'main_info') this.mainInfo = 1});

  factory _$_Schedule.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String day;
  @override
  @JsonKey()
  final String startTime;
  @override
  @JsonKey()
  final String endTime;
  @override
  @JsonKey(name: 'main_info')
  final int mainInfo;

  @override
  String toString() {
    return 'Schedule(id: $id, day: $day, startTime: $startTime, endTime: $endTime, mainInfo: $mainInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Schedule &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.mainInfo, mainInfo) ||
                other.mainInfo == mainInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, day, startTime, endTime, mainInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      __$$_ScheduleCopyWithImpl<_$_Schedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleToJson(
      this,
    );
  }
}

abstract class _Schedule implements Schedule {
  const factory _Schedule(
      {final int id,
      final String day,
      final String startTime,
      final String endTime,
      @JsonKey(name: 'main_info') final int mainInfo}) = _$_Schedule;

  factory _Schedule.fromJson(Map<String, dynamic> json) = _$_Schedule.fromJson;

  @override
  int get id;
  @override
  String get day;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  @JsonKey(name: 'main_info')
  int get mainInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialMedia _$SocialMediaFromJson(Map<String, dynamic> json) {
  return _SocialMedia.fromJson(json);
}

/// @nodoc
mixin _$SocialMedia {
  int get id => throw _privateConstructorUsedError;
  String get instagram => throw _privateConstructorUsedError;
  String get whatsapp => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_info')
  int get mainInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialMediaCopyWith<SocialMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialMediaCopyWith<$Res> {
  factory $SocialMediaCopyWith(
          SocialMedia value, $Res Function(SocialMedia) then) =
      _$SocialMediaCopyWithImpl<$Res, SocialMedia>;
  @useResult
  $Res call(
      {int id,
      String instagram,
      String whatsapp,
      @JsonKey(name: 'main_info') int mainInfo});
}

/// @nodoc
class _$SocialMediaCopyWithImpl<$Res, $Val extends SocialMedia>
    implements $SocialMediaCopyWith<$Res> {
  _$SocialMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? instagram = null,
    Object? whatsapp = null,
    Object? mainInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      instagram: null == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: null == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String,
      mainInfo: null == mainInfo
          ? _value.mainInfo
          : mainInfo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocialMediaCopyWith<$Res>
    implements $SocialMediaCopyWith<$Res> {
  factory _$$_SocialMediaCopyWith(
          _$_SocialMedia value, $Res Function(_$_SocialMedia) then) =
      __$$_SocialMediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String instagram,
      String whatsapp,
      @JsonKey(name: 'main_info') int mainInfo});
}

/// @nodoc
class __$$_SocialMediaCopyWithImpl<$Res>
    extends _$SocialMediaCopyWithImpl<$Res, _$_SocialMedia>
    implements _$$_SocialMediaCopyWith<$Res> {
  __$$_SocialMediaCopyWithImpl(
      _$_SocialMedia _value, $Res Function(_$_SocialMedia) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? instagram = null,
    Object? whatsapp = null,
    Object? mainInfo = null,
  }) {
    return _then(_$_SocialMedia(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      instagram: null == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: null == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String,
      mainInfo: null == mainInfo
          ? _value.mainInfo
          : mainInfo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialMedia implements _SocialMedia {
  const _$_SocialMedia(
      {this.id = 1,
      this.instagram = '',
      this.whatsapp = '',
      @JsonKey(name: 'main_info') this.mainInfo = 1});

  factory _$_SocialMedia.fromJson(Map<String, dynamic> json) =>
      _$$_SocialMediaFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String instagram;
  @override
  @JsonKey()
  final String whatsapp;
  @override
  @JsonKey(name: 'main_info')
  final int mainInfo;

  @override
  String toString() {
    return 'SocialMedia(id: $id, instagram: $instagram, whatsapp: $whatsapp, mainInfo: $mainInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialMedia &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            (identical(other.mainInfo, mainInfo) ||
                other.mainInfo == mainInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, instagram, whatsapp, mainInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocialMediaCopyWith<_$_SocialMedia> get copyWith =>
      __$$_SocialMediaCopyWithImpl<_$_SocialMedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialMediaToJson(
      this,
    );
  }
}

abstract class _SocialMedia implements SocialMedia {
  const factory _SocialMedia(
      {final int id,
      final String instagram,
      final String whatsapp,
      @JsonKey(name: 'main_info') final int mainInfo}) = _$_SocialMedia;

  factory _SocialMedia.fromJson(Map<String, dynamic> json) =
      _$_SocialMedia.fromJson;

  @override
  int get id;
  @override
  String get instagram;
  @override
  String get whatsapp;
  @override
  @JsonKey(name: 'main_info')
  int get mainInfo;
  @override
  @JsonKey(ignore: true)
  _$$_SocialMediaCopyWith<_$_SocialMedia> get copyWith =>
      throw _privateConstructorUsedError;
}
