// app_theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextStyle poppins({
    FontWeight fontWeight = FontWeight.w400,
    Color color = const Color.fromRGBO(34, 31, 31, 1),
    double fontSize = 14,
  }) {
    return GoogleFonts.poppins(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    );
  }

  static const Color primaryColor = Color.fromRGBO(53, 63, 84, 1);
  static const Color primaryLightColor = Color.fromRGBO(75, 76, 237, 1);
  static const Color textColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color textColorLight = Color.fromRGBO(195, 195, 195, 1);
  static const Color iconColor = Color.fromRGBO(240, 241, 250, 1);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryColor, primaryLightColor],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.5, 0.5],
  );

  static BoxDecoration contDecoration1 = BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          Color.fromRGBO(53, 63, 84, 0.5),
          Color.fromRGBO(34, 40, 52, 0.5),
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      borderRadius: BorderRadius.circular(10));
  static BoxDecoration contDecoration = BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          Color.fromRGBO(72, 92, 236, 1),
          Color.fromRGBO(75, 76, 237, 1),
          Color.fromRGBO(55, 182, 233, 1),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.9, 0.0, 0.0],
      ),
      borderRadius: BorderRadius.circular(10));

  static final ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.allertaStencil(
          fontWeight: FontWeight.w400,
          fontSize: 150,
          color: const Color.fromRGBO(255, 255, 255, 0.3),
        ),
        titleLarge: poppins(
            fontWeight: FontWeight.w500, fontSize: 30, color: textColor),
        titleMedium: poppins(
            fontWeight: FontWeight.w500, fontSize: 20, color: textColor),
        bodyLarge: poppins(
            fontWeight: FontWeight.w500, fontSize: 15, color: textColorLight),
        labelLarge: poppins(
            fontWeight: FontWeight.w600, fontSize: 21, color: textColor),
        bodySmall: poppins(
            fontWeight: FontWeight.w500, fontSize: 13, color: primaryColor),
      ),
      iconTheme: const IconThemeData(size: 30, color: textColor));
}
