// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_recipe_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodRecipeDataImpl _$$FoodRecipeDataImplFromJson(Map<String, dynamic> json) =>
    _$FoodRecipeDataImpl(
      name: json['name'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      steps: (json['steps'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$FoodRecipeDataImplToJson(
        _$FoodRecipeDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ingredients': instance.ingredients,
      'steps': instance.steps,
    };
