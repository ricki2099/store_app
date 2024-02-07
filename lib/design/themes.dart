import 'package:flutter/material.dart';
import 'package:test/design/colors.dart';

class Themes {
  Themes._(); // lo vuelve privado
  static ThemeData defaulTheme = ThemeData(
    fontFamily: 'RobotoMono',
    primaryColor: ColorsRandom.brandPrimaryColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      displaySmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      headlineLarge:
          TextStyle(fontSize: 21.0, color: ColorsRandom.brandPrimaryColor),
      bodyLarge: TextStyle(fontSize: 14.0),
      bodyMedium: TextStyle(fontSize: 13.0),
      bodySmall: TextStyle(fontSize: 10.0),
    ),
  );
}
