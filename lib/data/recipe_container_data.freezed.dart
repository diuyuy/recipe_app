// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_container_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeContainerData {
  String get img => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of RecipeContainerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeContainerDataCopyWith<RecipeContainerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeContainerDataCopyWith<$Res> {
  factory $RecipeContainerDataCopyWith(
          RecipeContainerData value, $Res Function(RecipeContainerData) then) =
      _$RecipeContainerDataCopyWithImpl<$Res, RecipeContainerData>;
  @useResult
  $Res call({String img, String name});
}

/// @nodoc
class _$RecipeContainerDataCopyWithImpl<$Res, $Val extends RecipeContainerData>
    implements $RecipeContainerDataCopyWith<$Res> {
  _$RecipeContainerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeContainerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeContainerDataImplCopyWith<$Res>
    implements $RecipeContainerDataCopyWith<$Res> {
  factory _$$RecipeContainerDataImplCopyWith(_$RecipeContainerDataImpl value,
          $Res Function(_$RecipeContainerDataImpl) then) =
      __$$RecipeContainerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String img, String name});
}

/// @nodoc
class __$$RecipeContainerDataImplCopyWithImpl<$Res>
    extends _$RecipeContainerDataCopyWithImpl<$Res, _$RecipeContainerDataImpl>
    implements _$$RecipeContainerDataImplCopyWith<$Res> {
  __$$RecipeContainerDataImplCopyWithImpl(_$RecipeContainerDataImpl _value,
      $Res Function(_$RecipeContainerDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeContainerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
    Object? name = null,
  }) {
    return _then(_$RecipeContainerDataImpl(
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecipeContainerDataImpl implements _RecipeContainerData {
  const _$RecipeContainerDataImpl({required this.img, required this.name});

  @override
  final String img;
  @override
  final String name;

  @override
  String toString() {
    return 'RecipeContainerData(img: $img, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeContainerDataImpl &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, img, name);

  /// Create a copy of RecipeContainerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeContainerDataImplCopyWith<_$RecipeContainerDataImpl> get copyWith =>
      __$$RecipeContainerDataImplCopyWithImpl<_$RecipeContainerDataImpl>(
          this, _$identity);
}

abstract class _RecipeContainerData implements RecipeContainerData {
  const factory _RecipeContainerData(
      {required final String img,
      required final String name}) = _$RecipeContainerDataImpl;

  @override
  String get img;
  @override
  String get name;

  /// Create a copy of RecipeContainerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeContainerDataImplCopyWith<_$RecipeContainerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
