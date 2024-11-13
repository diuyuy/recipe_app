import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_recipe_data.freezed.dart';
part 'food_recipe_data.g.dart';

@freezed
class FoodRecipeData with _$FoodRecipeData {
  const factory FoodRecipeData({
    required String name,
    required List<String> ingredients,
    required List<String> steps,
}) = _FoodRecipeData;

  factory FoodRecipeData.fromJson(Map<String, dynamic> json) =>
      _$FoodRecipeDataFromJson(json);
}
