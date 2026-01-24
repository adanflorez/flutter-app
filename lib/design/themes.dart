import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';

class CustomTheme {
  CustomTheme._();

  static ThemeData main = ThemeData(
      fontFamily: 'RobotoMono',
      primaryColor: CustomColors.brandPrimaryColor,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.bold,
            color: CustomColors.brandLightColor),
        displayMedium: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: CustomColors.brandLightColor),
        displaySmall: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: CustomColors.brandLightColor),
        headlineLarge:
            TextStyle(fontSize: 21.0, color: CustomColors.brandPrimaryColor),
        labelLarge: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: CustomColors.brandPrimaryColor),
        labelMedium: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
            color: CustomColors.brandLightDarkColor),
        bodyLarge:
            TextStyle(fontSize: 14.0, color: CustomColors.brandLightColor),
        bodyMedium: TextStyle(fontSize: 13.0),
        bodySmall: TextStyle(fontSize: 10.0),
      ));
}
