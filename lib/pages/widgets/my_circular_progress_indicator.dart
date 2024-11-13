import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controller/theme_controller.dart';
import 'package:recipe_app/core/const_theme_data.dart';

class MyCircularProgressIndicator extends StatelessWidget {
  const MyCircularProgressIndicator({super.key, required this.ratio});

  final double ratio;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final controller = Get.find<ThemeController>();
    return SizedBox(
      width: screenWidth * 0.2,
      height: screenWidth * 0.2,
      child: CircularProgressIndicator(
        value: ratio,
        strokeWidth: 8,
        backgroundColor: controller.isDarkTheme
            ? ConstThemeData.colorGrey
            : ConstThemeData.colorBlack,
        valueColor: AlwaysStoppedAnimation<Color>(ConstThemeData.colorGreen),
      ),
    );
  }
}
