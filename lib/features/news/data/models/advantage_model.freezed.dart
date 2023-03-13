// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advantage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdvantageOrServiceModel _$AdvantageModelFromJson(Map<String, dynamic> json) {
  return _AdvantageModel.fromJson(json);
}

/// @nodoc
mixin _$AdvantageOrServiceModel {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvantageModelCopyWith<AdvantageOrServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvantageModelCopyWith<$Res> {
  factory $AdvantageModelCopyWith(AdvantageOrServiceModel value,
          $Res Function(AdvantageOrServiceModel) then) =
      _$AdvantageModelCopyWithImpl<$Res, AdvantageOrServiceModel>;
  @useResult
  $Res call({int id, String image, String text});
}

/// @nodoc
class _$AdvantageModelCopyWithImpl<$Res, $Val extends AdvantageOrServiceModel>
    implements $AdvantageModelCopyWith<$Res> {
  _$AdvantageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdvantageModelCopyWith<$Res>
    implements $AdvantageModelCopyWith<$Res> {
  factory _$$_AdvantageModelCopyWith(
          _$_AdvantageModel value, $Res Function(_$_AdvantageModel) then) =
      __$$_AdvantageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String image, String text});
}

/// @nodoc
class __$$_AdvantageModelCopyWithImpl<$Res>
    extends _$AdvantageModelCopyWithImpl<$Res, _$_AdvantageModel>
    implements _$$_AdvantageModelCopyWith<$Res> {
  __$$_AdvantageModelCopyWithImpl(
      _$_AdvantageModel _value, $Res Function(_$_AdvantageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? text = null,
  }) {
    return _then(_$_AdvantageModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdvantageModel implements _AdvantageModel {
  const _$_AdvantageModel({this.id = 2, this.image = '', this.text = ''});

  factory _$_AdvantageModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdvantageModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'AdvantageModel(id: $id, image: $image, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdvantageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdvantageModelCopyWith<_$_AdvantageModel> get copyWith =>
      __$$_AdvantageModelCopyWithImpl<_$_AdvantageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdvantageModelToJson(
      this,
    );
  }
}

abstract class _AdvantageModel implements AdvantageOrServiceModel {
  const factory _AdvantageModel(
      {final int id,
      final String image,
      final String text}) = _$_AdvantageModel;

  factory _AdvantageModel.fromJson(Map<String, dynamic> json) =
      _$_AdvantageModel.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_AdvantageModelCopyWith<_$_AdvantageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
