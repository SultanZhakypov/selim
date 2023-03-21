// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) {
  return _CategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$CategoriesModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_advantages')
  List<CategoryAdvantage> get categoryAdvantages =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesModelCopyWith<CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesModelCopyWith<$Res> {
  factory $CategoriesModelCopyWith(
          CategoriesModel value, $Res Function(CategoriesModel) then) =
      _$CategoriesModelCopyWithImpl<$Res, CategoriesModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String image,
      String description,
      int category,
      @JsonKey(name: 'category_advantages')
          List<CategoryAdvantage> categoryAdvantages});
}

/// @nodoc
class _$CategoriesModelCopyWithImpl<$Res, $Val extends CategoriesModel>
    implements $CategoriesModelCopyWith<$Res> {
  _$CategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? description = null,
    Object? category = null,
    Object? categoryAdvantages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      categoryAdvantages: null == categoryAdvantages
          ? _value.categoryAdvantages
          : categoryAdvantages // ignore: cast_nullable_to_non_nullable
              as List<CategoryAdvantage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesModelCopyWith<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  factory _$$_CategoriesModelCopyWith(
          _$_CategoriesModel value, $Res Function(_$_CategoriesModel) then) =
      __$$_CategoriesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String image,
      String description,
      int category,
      @JsonKey(name: 'category_advantages')
          List<CategoryAdvantage> categoryAdvantages});
}

/// @nodoc
class __$$_CategoriesModelCopyWithImpl<$Res>
    extends _$CategoriesModelCopyWithImpl<$Res, _$_CategoriesModel>
    implements _$$_CategoriesModelCopyWith<$Res> {
  __$$_CategoriesModelCopyWithImpl(
      _$_CategoriesModel _value, $Res Function(_$_CategoriesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? description = null,
    Object? category = null,
    Object? categoryAdvantages = null,
  }) {
    return _then(_$_CategoriesModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      categoryAdvantages: null == categoryAdvantages
          ? _value._categoryAdvantages
          : categoryAdvantages // ignore: cast_nullable_to_non_nullable
              as List<CategoryAdvantage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesModel implements _CategoriesModel {
  const _$_CategoriesModel(
      {this.id = 1,
      this.title = '',
      this.image = '',
      this.description = '',
      this.category = 1,
      @JsonKey(name: 'category_advantages')
          final List<CategoryAdvantage> categoryAdvantages = const []})
      : _categoryAdvantages = categoryAdvantages;

  factory _$_CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int category;
  final List<CategoryAdvantage> _categoryAdvantages;
  @override
  @JsonKey(name: 'category_advantages')
  List<CategoryAdvantage> get categoryAdvantages {
    if (_categoryAdvantages is EqualUnmodifiableListView)
      return _categoryAdvantages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryAdvantages);
  }

  @override
  String toString() {
    return 'CategoriesModel(id: $id, title: $title, image: $image, description: $description, category: $category, categoryAdvantages: $categoryAdvantages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._categoryAdvantages, _categoryAdvantages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image, description,
      category, const DeepCollectionEquality().hash(_categoryAdvantages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesModelCopyWith<_$_CategoriesModel> get copyWith =>
      __$$_CategoriesModelCopyWithImpl<_$_CategoriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesModelToJson(
      this,
    );
  }
}

abstract class _CategoriesModel implements CategoriesModel {
  const factory _CategoriesModel(
          {final int id,
          final String title,
          final String image,
          final String description,
          final int category,
          @JsonKey(name: 'category_advantages')
              final List<CategoryAdvantage> categoryAdvantages}) =
      _$_CategoriesModel;

  factory _CategoriesModel.fromJson(Map<String, dynamic> json) =
      _$_CategoriesModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get description;
  @override
  int get category;
  @override
  @JsonKey(name: 'category_advantages')
  List<CategoryAdvantage> get categoryAdvantages;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesModelCopyWith<_$_CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryAdvantage _$CategoryAdvantageFromJson(Map<String, dynamic> json) {
  return _CategoryAdvantage.fromJson(json);
}

/// @nodoc
mixin _$CategoryAdvantage {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryAdvantageCopyWith<CategoryAdvantage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryAdvantageCopyWith<$Res> {
  factory $CategoryAdvantageCopyWith(
          CategoryAdvantage value, $Res Function(CategoryAdvantage) then) =
      _$CategoryAdvantageCopyWithImpl<$Res, CategoryAdvantage>;
  @useResult
  $Res call(
      {int id,
      String title,
      String text,
      int category,
      @JsonKey(name: 'category_name') String categoryName});
}

/// @nodoc
class _$CategoryAdvantageCopyWithImpl<$Res, $Val extends CategoryAdvantage>
    implements $CategoryAdvantageCopyWith<$Res> {
  _$CategoryAdvantageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = null,
    Object? category = null,
    Object? categoryName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryAdvantageCopyWith<$Res>
    implements $CategoryAdvantageCopyWith<$Res> {
  factory _$$_CategoryAdvantageCopyWith(_$_CategoryAdvantage value,
          $Res Function(_$_CategoryAdvantage) then) =
      __$$_CategoryAdvantageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String text,
      int category,
      @JsonKey(name: 'category_name') String categoryName});
}

/// @nodoc
class __$$_CategoryAdvantageCopyWithImpl<$Res>
    extends _$CategoryAdvantageCopyWithImpl<$Res, _$_CategoryAdvantage>
    implements _$$_CategoryAdvantageCopyWith<$Res> {
  __$$_CategoryAdvantageCopyWithImpl(
      _$_CategoryAdvantage _value, $Res Function(_$_CategoryAdvantage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = null,
    Object? category = null,
    Object? categoryName = null,
  }) {
    return _then(_$_CategoryAdvantage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryAdvantage implements _CategoryAdvantage {
  const _$_CategoryAdvantage(
      {this.id = 1,
      this.title = '',
      this.text = '',
      this.category = 1,
      @JsonKey(name: 'category_name') this.categoryName = ''});

  factory _$_CategoryAdvantage.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryAdvantageFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final int category;
  @override
  @JsonKey(name: 'category_name')
  final String categoryName;

  @override
  String toString() {
    return 'CategoryAdvantage(id: $id, title: $title, text: $text, category: $category, categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryAdvantage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, text, category, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryAdvantageCopyWith<_$_CategoryAdvantage> get copyWith =>
      __$$_CategoryAdvantageCopyWithImpl<_$_CategoryAdvantage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryAdvantageToJson(
      this,
    );
  }
}

abstract class _CategoryAdvantage implements CategoryAdvantage {
  const factory _CategoryAdvantage(
          {final int id,
          final String title,
          final String text,
          final int category,
          @JsonKey(name: 'category_name') final String categoryName}) =
      _$_CategoryAdvantage;

  factory _CategoryAdvantage.fromJson(Map<String, dynamic> json) =
      _$_CategoryAdvantage.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get text;
  @override
  int get category;
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryAdvantageCopyWith<_$_CategoryAdvantage> get copyWith =>
      throw _privateConstructorUsedError;
}
