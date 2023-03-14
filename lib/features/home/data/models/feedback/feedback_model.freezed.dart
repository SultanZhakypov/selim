// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackModel _$FeedbackModelFromJson(Map<String, dynamic> json) {
  return _FeedBackModel.fromJson(json);
}

/// @nodoc
mixin _$FeedbackModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackModelCopyWith<FeedbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackModelCopyWith<$Res> {
  factory $FeedbackModelCopyWith(
          FeedbackModel value, $Res Function(FeedbackModel) then) =
      _$FeedbackModelCopyWithImpl<$Res, FeedbackModel>;
  @useResult
  $Res call({int id, String name, String message, String createdAt});
}

/// @nodoc
class _$FeedbackModelCopyWithImpl<$Res, $Val extends FeedbackModel>
    implements $FeedbackModelCopyWith<$Res> {
  _$FeedbackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? message = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeedBackModelCopyWith<$Res>
    implements $FeedbackModelCopyWith<$Res> {
  factory _$$_FeedBackModelCopyWith(
          _$_FeedBackModel value, $Res Function(_$_FeedBackModel) then) =
      __$$_FeedBackModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String message, String createdAt});
}

/// @nodoc
class __$$_FeedBackModelCopyWithImpl<$Res>
    extends _$FeedbackModelCopyWithImpl<$Res, _$_FeedBackModel>
    implements _$$_FeedBackModelCopyWith<$Res> {
  __$$_FeedBackModelCopyWithImpl(
      _$_FeedBackModel _value, $Res Function(_$_FeedBackModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? message = null,
    Object? createdAt = null,
  }) {
    return _then(_$_FeedBackModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedBackModel implements _FeedBackModel {
  const _$_FeedBackModel(
      {this.id = 1, this.name = '', this.message = '', this.createdAt = ''});

  factory _$_FeedBackModel.fromJson(Map<String, dynamic> json) =>
      _$$_FeedBackModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String createdAt;

  @override
  String toString() {
    return 'FeedbackModel(id: $id, name: $name, message: $message, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedBackModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, message, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedBackModelCopyWith<_$_FeedBackModel> get copyWith =>
      __$$_FeedBackModelCopyWithImpl<_$_FeedBackModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedBackModelToJson(
      this,
    );
  }
}

abstract class _FeedBackModel implements FeedbackModel {
  const factory _FeedBackModel(
      {final int id,
      final String name,
      final String message,
      final String createdAt}) = _$_FeedBackModel;

  factory _FeedBackModel.fromJson(Map<String, dynamic> json) =
      _$_FeedBackModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get message;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_FeedBackModelCopyWith<_$_FeedBackModel> get copyWith =>
      throw _privateConstructorUsedError;
}
