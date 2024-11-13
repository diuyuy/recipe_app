import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controller/home_page_controller.dart';
import 'package:recipe_app/controller/recipe_page_controller.dart';
import 'package:recipe_app/core/const_recipe_page_data.dart';
import 'package:recipe_app/data/food_data.dart';
import 'package:recipe_app/data/food_recipe_data.dart';
import 'package:recipe_app/pages/widgets/my_circular_progress_indicator.dart';

class RecipePage extends StatelessWidget {
  const RecipePage(
      {super.key,
      required this.img,
      required this.name,
      required this.foodData,
      required this.foodRecipeData
      });

  final String img;
  final String name;
  final FoodData foodData;
  final FoodRecipeData foodRecipeData;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final controller = Get.put<RecipePageController>(RecipePageController());
    controller.setNutritionRatio(foodData);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_outlined),
        ),
        centerTitle: false,
        title: Text(
          name,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
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
            const Gap(10),
            Text(
              ConstRecipePageData.nutritionSubtitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...[for (int i = 0; i < 3; i++) i].map((index) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      MyCircularProgressIndicator(
                        ratio: controller.nutritionRatio[index],
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodySmall,
                          children: [
                            TextSpan(
                              text:
                              '${ConstRecipePageData.circularLabel[index]}\n',
                            ),
                            TextSpan(
                              text: ' ${controller.getStringRatio(index)}%',
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...[for (int i = 3; i < 6; i++) i].map((index) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      MyCircularProgressIndicator(
                        ratio: controller.nutritionRatio[index],
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodySmall,
                          children: [
                            TextSpan(
                              text:
                                  '${ConstRecipePageData.circularLabel[index]}\n',
                            ),
                            TextSpan(
                              text: '  ${controller.getStringRatio(index)}%',
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
            const Gap(20),
            Text(
              ConstRecipePageData.steps,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
