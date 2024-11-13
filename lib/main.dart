import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/controller/theme_controller.dart';
import 'package:recipe_app/core/const_theme_data.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<ThemeController>(()=>ThemeController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ConstThemeData.themeDataLight,
      home: HomePage(),
    );
  }
}
