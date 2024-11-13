import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/core/const_theme_data.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.img, required this.menu,required this.width});

  final String menu;
  final String img;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: SizedBox(
        height: width,
        width: width,
        child: Stack(
          children: [
            Image.asset(img,fit: BoxFit.cover,width: width,height: width),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.zero,
                width: width,
                color: ConstThemeData.colorGreen,
                child: Text(menu,style: Theme.of(context).textTheme.bodyLarge),
              ),
            )
          ],
        ),
      ),
    );
  }
}
