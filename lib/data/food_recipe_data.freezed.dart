// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_recipe_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FoodRecipeData _$FoodRecipeDataFromJson(Map<String, dynamic> json) {
  return _FoodRecipeData.fromJson(json);
}

/// @nodoc
mixin _$FoodRecipeData {
  String get name => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;
  List<String> get steps => throw _privateConstructorUsedError;

  /// Serializes this FoodRecipeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoodRecipeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodRecipeDataCopyWith<FoodRecipeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodRecipeDataCopyWith<$Res> {
  factory $FoodRecipeDataCopyWith(
          FoodRecipeData value, $Res Function(FoodRecipeData) then) =
      _$FoodRecipeDataCopyWithImpl<$Res, FoodRecipeData>;
  @useResult
  $Res call({String name, List<String> ingredients, List<String> steps});
}

/// @nodoc
class _$FoodRecipeDataCopyWithImpl<$Res, $Val extends FoodRecipeData>
    implements $FoodRecipeDataCopyWith<$Res> {
  _$FoodRecipeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodRecipeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ingredients = null,
    Object? steps = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodRecipeDataImplCopyWith<$Res>
    implements $FoodRecipeDataCopyWith<$Res> {
  factory _$$FoodRecipeDataImplCopyWith(_$FoodRecipeDataImpl value,
          $Res Function(_$FoodRecipeDataImpl) then) =
      __$$FoodRecipeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> ingredients, List<String> steps});
}

/// @nodoc
class __$$FoodRecipeDataImplCopyWithImpl<$Res>
    extends _$FoodRecipeDataCopyWithImpl<$Res, _$FoodRecipeDataImpl>
    implements _$$FoodRecipeDataImplCopyWith<$Res> {
  __$$FoodRecipeDataImplCopyWithImpl(
      _$FoodRecipeDataImpl _value, $Res Function(_$FoodRecipeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodRecipeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ingredients = null,
    Object? steps = null,
  }) {
    return _then(_$FoodRecipeDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodRecipeDataImpl implements _FoodRecipeData {
  const _$FoodRecipeDataImpl(
      {required this.name,
      required final List<String> ingredients,
      required final List<String> steps})
      : _ingredients = ingredients,
        _steps = steps;

  factory _$FoodRecipeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodRecipeDataImplFromJson(json);

  @override
  final String name;
  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<String> _steps;
  @override
  List<String> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'FoodRecipeData(name: $name, ingredients: $ingredients, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodRecipeDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_steps));

  /// Create a copy of FoodRecipeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodRecipeDataImplCopyWith<_$FoodRecipeDataImpl> get copyWith =>
      __$$FoodRecipeDataImplCopyWithImpl<_$FoodRecipeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodRecipeDataImplToJson(
      this,
    );
  }
}

abstract class _FoodRecipeData implements FoodRecipeData {
  const factory _FoodRecipeData(
      {required final String name,
      required final List<String> ingredients,
      required final List<String> steps}) = _$FoodRecipeDataImpl;

  factory _FoodRecipeData.fromJson(Map<String, dynamic> json) =
      _$FoodRecipeDataImpl.fromJson;

  @override
  String get name;
  @override
  List<String> get ingredients;
  @override
  List<String> get steps;

  /// Create a copy of FoodRecipeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodRecipeDataImplCopyWith<_$FoodRecipeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
