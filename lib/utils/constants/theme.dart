import 'package:flutter/material.dart';
import 'package:red_squirrel/utils/constants/colors.dart';
import 'package:red_squirrel/utils/constants/fonts.dart';

class AppTheme {
  static ThemeData lightTheme() => ThemeData(
      fontFamily: Fonts.primaryFont,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ThemeColors.primary,
        brightness: Brightness.light,
        primary: ThemeColors.primary,
        secondary: ThemeColors.secondary,
        outline: ThemeColors.border,
        onSurface: ThemeColors.label,
        background: ThemeColors.background,
      ),
      checkboxTheme: CheckboxThemeData(
          checkColor:
              MaterialStateProperty.resolveWith((_) => ThemeColors.primary),
          fillColor:
              MaterialStateProperty.resolveWith((_) => ThemeColors.secondary),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      scaffoldBackgroundColor: ThemeColors.background,
      brightness: Brightness.light);
}
