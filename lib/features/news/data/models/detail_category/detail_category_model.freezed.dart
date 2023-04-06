// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailCategoryModel _$DetailCategoryModelFromJson(Map<String, dynamic> json) {
  return _DetailCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$DetailCategoryModel {
  int get id => throw _privateConstructorUsedError;
  List<CategoryAdvantage> get categoryAdvantages =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'child_category')
  List<ChildCategory> get childCategory => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_category')
  int get parentCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailCategoryModelCopyWith<DetailCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCategoryModelCopyWith<$Res> {
  factory $DetailCategoryModelCopyWith(
          DetailCategoryModel value, $Res Function(DetailCategoryModel) then) =
      _$DetailCategoryModelCopyWithImpl<$Res, DetailCategoryModel>;
  @useResult
  $Res call(
      {int id,
      List<CategoryAdvantage> categoryAdvantages,
      @JsonKey(name: 'child_category') List<ChildCategory> childCategory,
      String title,
      String image,
      String description,
      @JsonKey(name: 'parent_category') int parentCategory});
}

/// @nodoc
class _$DetailCategoryModelCopyWithImpl<$Res, $Val extends DetailCategoryModel>
    implements $DetailCategoryModelCopyWith<$Res> {
  _$DetailCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryAdvantages = null,
    Object? childCategory = null,
    Object? title = null,
    Object? image = null,
    Object? description = null,
    Object? parentCategory = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryAdvantages: null == categoryAdvantages
          ? _value.categoryAdvantages
          : categoryAdvantages // ignore: cast_nullable_to_non_nullable
              as List<CategoryAdvantage>,
      childCategory: null == childCategory
          ? _value.childCategory
          : childCategory // ignore: cast_nullable_to_non_nullable
              as List<ChildCategory>,
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
      parentCategory: null == parentCategory
          ? _value.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailCategoryModelCopyWith<$Res>
    implements $DetailCategoryModelCopyWith<$Res> {
  factory _$$_DetailCategoryModelCopyWith(_$_DetailCategoryModel value,
          $Res Function(_$_DetailCategoryModel) then) =
      __$$_DetailCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<CategoryAdvantage> categoryAdvantages,
      @JsonKey(name: 'child_category') List<ChildCategory> childCategory,
      String title,
      String image,
      String description,
      @JsonKey(name: 'parent_category') int parentCategory});
}

/// @nodoc
class __$$_DetailCategoryModelCopyWithImpl<$Res>
    extends _$DetailCategoryModelCopyWithImpl<$Res, _$_DetailCategoryModel>
    implements _$$_DetailCategoryModelCopyWith<$Res> {
  __$$_DetailCategoryModelCopyWithImpl(_$_DetailCategoryModel _value,
      $Res Function(_$_DetailCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryAdvantages = null,
    Object? childCategory = null,
    Object? title = null,
    Object? image = null,
    Object? description = null,
    Object? parentCategory = null,
  }) {
    return _then(_$_DetailCategoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryAdvantages: null == categoryAdvantages
          ? _value._categoryAdvantages
          : categoryAdvantages // ignore: cast_nullable_to_non_nullable
              as List<CategoryAdvantage>,
      childCategory: null == childCategory
          ? _value._childCategory
          : childCategory // ignore: cast_nullable_to_non_nullable
              as List<ChildCategory>,
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
      parentCategory: null == parentCategory
          ? _value.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailCategoryModel implements _DetailCategoryModel {
  const _$_DetailCategoryModel(
      {this.id = 0,
      final List<CategoryAdvantage> categoryAdvantages = const [],
      @JsonKey(name: 'child_category')
          final List<ChildCategory> childCategory = const [],
      this.title = '',
      this.image = '',
      this.description = '',
      @JsonKey(name: 'parent_category')
          this.parentCategory = 0})
      : _categoryAdvantages = categoryAdvantages,
        _childCategory = childCategory;

  factory _$_DetailCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailCategoryModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  final List<CategoryAdvantage> _categoryAdvantages;
  @override
  @JsonKey()
  List<CategoryAdvantage> get categoryAdvantages {
    if (_categoryAdvantages is EqualUnmodifiableListView)
      return _categoryAdvantages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryAdvantages);
  }

  final List<ChildCategory> _childCategory;
  @override
  @JsonKey(name: 'child_category')
  List<ChildCategory> get childCategory {
    if (_childCategory is EqualUnmodifiableListView) return _childCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childCategory);
  }

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
  @JsonKey(name: 'parent_category')
  final int parentCategory;

  @override
  String toString() {
    return 'DetailCategoryModel(id: $id, categoryAdvantages: $categoryAdvantages, childCategory: $childCategory, title: $title, image: $image, description: $description, parentCategory: $parentCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._categoryAdvantages, _categoryAdvantages) &&
            const DeepCollectionEquality()
                .equals(other._childCategory, _childCategory) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.parentCategory, parentCategory) ||
                other.parentCategory == parentCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_categoryAdvantages),
      const DeepCollectionEquality().hash(_childCategory),
      title,
      image,
      description,
      parentCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailCategoryModelCopyWith<_$_DetailCategoryModel> get copyWith =>
      __$$_DetailCategoryModelCopyWithImpl<_$_DetailCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailCategoryModelToJson(
      this,
    );
  }
}

abstract class _DetailCategoryModel implements DetailCategoryModel {
  const factory _DetailCategoryModel(
      {final int id,
      final List<CategoryAdvantage> categoryAdvantages,
      @JsonKey(name: 'child_category')
          final List<ChildCategory> childCategory,
      final String title,
      final String image,
      final String description,
      @JsonKey(name: 'parent_category')
          final int parentCategory}) = _$_DetailCategoryModel;

  factory _DetailCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_DetailCategoryModel.fromJson;

  @override
  int get id;
  @override
  List<CategoryAdvantage> get categoryAdvantages;
  @override
  @JsonKey(name: 'child_category')
  List<ChildCategory> get childCategory;
  @override
  String get title;
  @override
  String get image;
  @override
  String get description;
  @override
  @JsonKey(name: 'parent_category')
  int get parentCategory;
  @override
  @JsonKey(ignore: true)
  _$$_DetailCategoryModelCopyWith<_$_DetailCategoryModel> get copyWith =>
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
  $Res call({int id, String title, String text, int category});
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
  $Res call({int id, String title, String text, int category});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryAdvantage implements _CategoryAdvantage {
  const _$_CategoryAdvantage(
      {this.id = 0, this.title = '', this.text = '', this.category = 0});

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
  String toString() {
    return 'CategoryAdvantage(id: $id, title: $title, text: $text, category: $category)';
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
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, text, category);

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
      final int category}) = _$_CategoryAdvantage;

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
  @JsonKey(ignore: true)
  _$$_CategoryAdvantageCopyWith<_$_CategoryAdvantage> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildCategory _$ChildCategoryFromJson(Map<String, dynamic> json) {
  return _ChildCategory.fromJson(json);
}

/// @nodoc
mixin _$ChildCategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_category')
  int get parentCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildCategoryCopyWith<ChildCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCategoryCopyWith<$Res> {
  factory $ChildCategoryCopyWith(
          ChildCategory value, $Res Function(ChildCategory) then) =
      _$ChildCategoryCopyWithImpl<$Res, ChildCategory>;
  @useResult
  $Res call(
      {int id,
      String title,
      String image,
      String description,
      @JsonKey(name: 'parent_category') int parentCategory});
}

/// @nodoc
class _$ChildCategoryCopyWithImpl<$Res, $Val extends ChildCategory>
    implements $ChildCategoryCopyWith<$Res> {
  _$ChildCategoryCopyWithImpl(this._value, this._then);

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
    Object? parentCategory = null,
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
      parentCategory: null == parentCategory
          ? _value.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildCategoryCopyWith<$Res>
    implements $ChildCategoryCopyWith<$Res> {
  factory _$$_ChildCategoryCopyWith(
          _$_ChildCategory value, $Res Function(_$_ChildCategory) then) =
      __$$_ChildCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String image,
      String description,
      @JsonKey(name: 'parent_category') int parentCategory});
}

/// @nodoc
class __$$_ChildCategoryCopyWithImpl<$Res>
    extends _$ChildCategoryCopyWithImpl<$Res, _$_ChildCategory>
    implements _$$_ChildCategoryCopyWith<$Res> {
  __$$_ChildCategoryCopyWithImpl(
      _$_ChildCategory _value, $Res Function(_$_ChildCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? description = null,
    Object? parentCategory = null,
  }) {
    return _then(_$_ChildCategory(
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
      parentCategory: null == parentCategory
          ? _value.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildCategory implements _ChildCategory {
  const _$_ChildCategory(
      {this.id = 0,
      this.title = '',
      this.image = '',
      this.description = '',
      @JsonKey(name: 'parent_category') this.parentCategory = 0});

  factory _$_ChildCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ChildCategoryFromJson(json);

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
  @JsonKey(name: 'parent_category')
  final int parentCategory;

  @override
  String toString() {
    return 'ChildCategory(id: $id, title: $title, image: $image, description: $description, parentCategory: $parentCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.parentCategory, parentCategory) ||
                other.parentCategory == parentCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, description, parentCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildCategoryCopyWith<_$_ChildCategory> get copyWith =>
      __$$_ChildCategoryCopyWithImpl<_$_ChildCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildCategoryToJson(
      this,
    );
  }
}

abstract class _ChildCategory implements ChildCategory {
  const factory _ChildCategory(
          {final int id,
          final String title,
          final String image,
          final String description,
          @JsonKey(name: 'parent_category') final int parentCategory}) =
      _$_ChildCategory;

  factory _ChildCategory.fromJson(Map<String, dynamic> json) =
      _$_ChildCategory.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get description;
  @override
  @JsonKey(name: 'parent_category')
  int get parentCategory;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCategoryCopyWith<_$_ChildCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
