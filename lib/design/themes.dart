import 'package:flutter/material.dart';
import 'package:test/design/colors.dart';

class ThemesRandom {
  ThemesRandom._();
  static ThemeData defaultTheme = ThemeData(
    fontFamily: 'RobotoMono',
    primaryColor: ColorsRandom.brandPrimaryColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 48.0,
          fontWeight: FontWeight.bold,
          color: ColorsRandom.brandLightColor),
      displayMedium: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: ColorsRandom.brandLightColor),
      displaySmall: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: ColorsRandom.brandLightColor),
      headlineLarge:
          TextStyle(fontSize: 21.0, color: ColorsRandom.brandPrimaryColor),
      labelLarge: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: ColorsRandom.brandPrimaryColor),
      labelMedium: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
          color: ColorsRandom.brandLigthDarkColor),
      labelSmall: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: ColorsRandom.brandDarkColor),
      bodyLarge: TextStyle(fontSize: 14.0),
      bodyMedium: TextStyle(fontSize: 13.0),
      bodySmall: TextStyle(fontSize: 10.0),
    ),
  );
}
