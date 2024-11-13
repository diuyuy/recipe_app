import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:recipe_app/data/food_data.dart';
import 'package:recipe_app/data/recipe_container_data.dart';

import '../core/const_recipe_container_data.dart';

class HomePageController extends GetxController {
  List<RecipeContainerData> recipeList = [];
  List<FoodData> foodList = [];

  @override
  void onInit() {
    recipeList = ConstRecipeContainerData.recipeList;
    _loadFoodList();
    super.onInit();
  }

  Future<void> _loadFoodList() async {
    final String response = await rootBundle.loadString('lib/rda.json');
    final List<dynamic> jsonData = json.decode(response);
    foodList = jsonData.map((json) => FoodData.fromJson(json)).toList();
  }

  double getRatio(String num1, String num2) =>
      (Decimal.parse(num1) / Decimal.parse(num2)).toDouble();
}
