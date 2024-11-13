import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstThemeData {
  static const double headFontSize = 26.0;
  static const double headMediumFontSize = 20;
  static const double bodyFontSize = 18.0;
  static const double bodyMediumFontSize = 22.0;
  static const double bodySmallFontSize = 16;
  static const Color colorGreen = Color(0xff8DB646);
  static const Color colorBlack = Color(0xff1a1a1a);
  static const Color colorGrey = Color(0xff616161);
  static FontWeight? headFontWeight = FontWeight.normal;
  static ThemeData themeDataLight = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 4,
        shadowColor: Colors.black,
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: Colors.black,
          fontSize: ConstThemeData.headFontSize,
          //fontWeight: ConstThemeData.headFontWeight),
        ),
        headlineMedium: TextStyle(
          color: Colors.black,
          fontSize:ConstThemeData.headMediumFontSize,
        ),
        bodyLarge: GoogleFonts.nanumGothic(
            color: Colors.black,
            fontSize: ConstThemeData.bodyFontSize,
            fontWeight: ConstThemeData.bodyFontWeight),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: bodyMediumFontSize,
        ),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: ConstThemeData.bodySmallFontSize,
        )
      ),
      drawerTheme: DrawerThemeData(backgroundColor: Colors.white)
  );
  static FontWeight? bodyFontWeight = FontWeight.bold;
  static ThemeData themeDataDark = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xff1a1a1a),
        centerTitle: true,
        elevation: 4,
        shadowColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      iconTheme: IconThemeData(color: Colors.white),
      //iconButtonTheme: IconButtonThemeData(
      //   style: IconButton.styleFrom()
      // ),
      scaffoldBackgroundColor: Color(0xff1a1a1a),

      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: Colors.white,
          fontSize: ConstThemeData.headFontSize,
          //fontWeight: ConstThemeData.headFontWeight),
        ),
        headlineMedium: TextStyle(
          color: Colors.white,
          fontSize: ConstThemeData.headMediumFontSize,
        ),
        bodyLarge: GoogleFonts.nanumGothic(
            color: Colors.white,
            fontSize: ConstThemeData.bodyFontSize,
            fontWeight: ConstThemeData.bodyFontWeight),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: bodyMediumFontSize,
          ),
        bodySmall: TextStyle(
          color: Colors.white,
          fontSize: ConstThemeData.bodySmallFontSize,
        )
      ),
      drawerTheme: DrawerThemeData(backgroundColor: Color(0xff1a1a1a))
  );
}