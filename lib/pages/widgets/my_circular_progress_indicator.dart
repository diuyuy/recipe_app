import 'package:flutter/material.dart';
import 'package:recipe_app/core/const_theme_data.dart';

class MyCircularProgressIndicator extends StatelessWidget {
  const MyCircularProgressIndicator({super.key,required this.label,required this.ratio});

  final double ratio;
  final String label;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth*0.25,
      height: screenWidth*0.25,
      child: CircularProgressIndicator(
        value: ratio,
        strokeWidth: 8,
        backgroundColor: ConstThemeData.colorBlack,
        valueColor: AlwaysStoppedAnimation<Color>(ConstThemeData.colorGreen),
      ),
    );
  }
}
