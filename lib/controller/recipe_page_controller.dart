import 'package:decimal/decimal.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:recipe_app/core/const_recipe_page_data.dart';
import 'package:recipe_app/data/food_data.dart';

class RecipePageController extends GetxController {
  final List<double> nutritionRatio = [];

  double getRatio(String num1, String num2) =>
      (Decimal.parse(num1) / Decimal.parse(num2)).toDouble();

  void setNutritionRatio(FoodData foodData) {
    nutritionRatio.add(getRatio(foodData.calories, ConstRecipePageData.rda[0]));
    nutritionRatio.add(getRatio(foodData.carbohydratesG, ConstRecipePageData.rda[1]));
    nutritionRatio.add(getRatio(foodData.proteinG, ConstRecipePageData.rda[2]));
    nutritionRatio.add(getRatio(foodData.fatG, ConstRecipePageData.rda[3]));
    nutritionRatio.add(getRatio(foodData.saturatedFatG, ConstRecipePageData.rda[4]));
    nutritionRatio.add(getRatio(foodData.sodiumMg, ConstRecipePageData.rda[5]));
    update();
  }

  String getStringRatio(int index){
    return (nutritionRatio[index]*100).toStringAsFixed(1);
  }
}