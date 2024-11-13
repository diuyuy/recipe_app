import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:recipe_app/core/const_recipe_page_data.dart';
import 'package:recipe_app/data/food_data.dart';

class RecipePage extends StatelessWidget {
  const RecipePage(
      {super.key,
      required this.img,
      required this.name,
      required this.foodData});

  final String img;
  final String name;
  final FoodData foodData;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_outlined),
        ),
        centerTitle: false,
        title: Text(name, style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: screenWidth,
              height: screenWidth * 9 / 16,
              child: Image.asset(img, fit: BoxFit.cover),
            ),
            const Gap(10),
            Text(
              ConstRecipePageData.nutrition,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
