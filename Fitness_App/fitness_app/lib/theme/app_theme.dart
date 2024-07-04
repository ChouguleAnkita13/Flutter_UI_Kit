// app_theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextStyle lato({
    FontWeight fontWeight = FontWeight.w400,
    Color color = const Color.fromRGBO(25, 33, 38, 1),
    double fontSize = 14,
  }) {
    return GoogleFonts.lato(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    );
  }

  static const Color primaryColor = Color.fromRGBO(25, 33, 38, 1);
  static const Color primaryLightColor = Color.fromRGBO(187, 242, 70, 1);
  static const Color textColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color textColorLight = Color.fromRGBO(25, 33, 38, 0.5);
  static const Color iconColor = Color.fromRGBO(240, 241, 250, 1);

  static final ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      textTheme: TextTheme(
        displayLarge: lato(
          fontWeight: FontWeight.w900,
          fontSize: 24,
          color: primaryColor,
        ),
        titleLarge:
            lato(fontWeight: FontWeight.w700, fontSize: 24, color: textColor),
        titleMedium: lato(
            fontWeight: FontWeight.w700, fontSize: 18, color: primaryColor),
        bodyLarge:
            lato(fontWeight: FontWeight.w700, fontSize: 16, color: textColor),
        bodyMedium: lato(
            fontWeight: FontWeight.w500, fontSize: 16, color: primaryColor),
        labelLarge: lato(
            fontWeight: FontWeight.w400, fontSize: 15, color: textColorLight),
        labelMedium: lato(
            fontWeight: FontWeight.w600, fontSize: 14, color: primaryColor),
        bodySmall: lato(
            fontWeight: FontWeight.w500, fontSize: 13, color: primaryColor),
      ),
      iconTheme: const IconThemeData(size: 30, color: textColor)
      );
}
