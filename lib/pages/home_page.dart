import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controller/home_page_controller.dart';
import 'package:recipe_app/controller/theme_controller.dart';
import 'package:recipe_app/core/const_drawer_data.dart';
import 'package:recipe_app/core/const_home_page_data.dart';
import 'package:recipe_app/core/const_recipe_container_data.dart';
import 'package:recipe_app/pages/recipe_page.dart';
import 'package:recipe_app/pages/widgets/my_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double containerWidth = screenWidth * 0.5;
    final controller =
        Get.put<HomePageController>(HomePageController(), permanent: true);
    final themeController = Get.find<ThemeController>();
    return Scaffold(
      drawer: Drawer(
        width: 200,
        //backgroundColor: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: 80,
              child: DrawerHeader(
                child: SizedBox(
                  width: 200,
                  child: Row(
                    children: [
                      Text(
                        ConstHomePageData.category,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const Gap(20),
                      Switch(
                        value: themeController.isDarkTheme,
                        onChanged: themeController.toggleTheme,
                        activeColor: Colors.white,
                        activeTrackColor: Colors.grey[700],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ...ConstDrawerData.title.map((element) {
              return ListTile(
                title: Text(
                  element,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                onTap: () {},
              );
            })
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(ConstHomePageData.title,
            style: Theme.of(context).textTheme.headlineLarge),
        centerTitle: true,
        actions: [
          // Switch(
          //   value: themeController.isDarkTheme,
          //   onChanged: themeController.toggleTheme,
          //   activeColor: Colors.white,
          //   activeTrackColor: Colors.grey[700],
          // ),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: containerWidth,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: controller.recipeList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Get.to(RecipePage(
                img: controller.recipeList[index].img,
                name: controller.recipeList[index].name,
                foodData: controller.foodList[index],
                foodRecipeData: controller.foodRecipeList[index],
              )),
              child: MyContainer(
                  img: controller.recipeList[index].img,
                  menu: controller.recipeList[index].name,
                  width: containerWidth),
            );
          },
        ),
      ),
    );
  }
}
