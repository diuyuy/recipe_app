import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controller/home_page_controller.dart';
import 'package:recipe_app/core/const_recipe_page_data.dart';
import 'package:recipe_app/data/food_data.dart';
import 'package:recipe_app/pages/widgets/my_circular_progress_indicator.dart';

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
    final controller = Get.find<HomePageController>();
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
            const Gap(10),
            Text(
              ConstRecipePageData.nutritionSubtitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    MyCircularProgressIndicator(
                      ratio: controller.getRatio(
                        foodData.calories,
                        ConstRecipePageData.rda[0],
                      ),
                    ),
                    Text(
                      ConstRecipePageData.circularLabel[0],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    MyCircularProgressIndicator(
                      ratio: controller.getRatio(
                        foodData.carbohydratesG,
                        ConstRecipePageData.rda[1],
                      ),
                    ),
                    Text(
                      ConstRecipePageData.circularLabel[1],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    MyCircularProgressIndicator(
                      ratio: controller.getRatio(
                        foodData.proteinG,
                        ConstRecipePageData.rda[2],
                      ),
                    ),
                    Text(
                      ConstRecipePageData.circularLabel[2],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    MyCircularProgressIndicator(
                      ratio: controller.getRatio(
                        foodData.fatG,
                        ConstRecipePageData.rda[3],
                      ),
                    ),
                    Text(
                      ConstRecipePageData.circularLabel[3],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    MyCircularProgressIndicator(
                      ratio: controller.getRatio(
                        foodData.saturatedFatG,
                        ConstRecipePageData.rda[4],
                      ),
                    ),
                    Text(
                      ConstRecipePageData.circularLabel[4],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    MyCircularProgressIndicator(
                      ratio: controller.getRatio(
                        foodData.sodiumMg,
                        ConstRecipePageData.rda[5],
                      ),
                    ),
                    Text(
                      ConstRecipePageData.circularLabel[5],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
