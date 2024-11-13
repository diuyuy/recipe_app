import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:recipe_app/core/const_theme_data.dart';

class ThemeController extends GetxController {
  bool isDarkTheme = false;

  void toggleTheme(bool value) {
    if(isDarkTheme){
      Get.changeTheme(ConstThemeData.themeDataLight);

      isDarkTheme = false;
    }
    else{
      Get.changeTheme(ConstThemeData.themeDataDark);
      isDarkTheme = true;
    }
    update();
  }
}