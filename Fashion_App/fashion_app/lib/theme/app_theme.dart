// app_theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextStyle imprima({
    FontWeight fontWeight = FontWeight.w400,
    Color color = const Color.fromRGBO(13, 13, 14, 1),
    double fontSize = 14,
  }) {
    return GoogleFonts.imprima(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    );
  }

  static const Color primaryColor = Color.fromRGBO(13, 13, 14, 1);
  static const Color primaryLightColor = Color.fromRGBO(255, 122, 0, 1);
  static const Color textColor = Color.fromRGBO(13, 13, 14, 1);
  static const Color textColorLight = Color.fromRGBO(121, 119, 128, 1);
  static const Color iconColor = Color.fromRGBO(13, 13, 14, 1);

  static BoxDecoration conDecor=BoxDecoration(
    borderRadius: BorderRadius.circular(90),
    color: primaryLightColor
  );

  static final ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      textTheme: TextTheme(
        displayLarge: imprima(
          fontWeight: FontWeight.w800,
          fontSize: 38,//42
          color: textColor,
        ),
        displayMedium: imprima(
          fontWeight: FontWeight.w600,
          fontSize: 32,//36
          color: textColor,
        ),
        titleLarge: imprima(
            fontWeight: FontWeight.w600, fontSize: 28, color: textColor),//30
        titleMedium: imprima(
            fontWeight: FontWeight.w600, fontSize: 22, color: textColor),//24
        bodyLarge: imprima(
            fontWeight: FontWeight.w600, fontSize: 18, color: textColor), 
        bodyMedium: imprima(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: const Color.fromRGBO(255, 255, 255, 1)),
        labelLarge: imprima(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: textColorLight), //
        labelMedium: imprima(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: textColorLight), //

        bodySmall: imprima(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: textColorLight), //
      ),
      iconTheme: const IconThemeData(size: 24, color: textColor));
}
