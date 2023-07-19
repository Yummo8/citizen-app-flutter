// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:red_squirrel/utils/constants/colors.dart';
import 'package:red_squirrel/utils/constants/fonts.dart';

class CustomTextStyle {
  const CustomTextStyle();

  static TextStyle TitleText(
          [Color textColor = ThemeColors.label,
          double fontSize = 48,
          FontWeight fontWeight = FontWeight.w400,
          String fontFamily = Fonts.secondaryFont,
          List<Shadow> shadows = const []]) =>
      TextStyle(
          color: textColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          shadows: shadows);

  static TextStyle HeaderTitleText(
          [Color textColor = ThemeColors.secondary,
          double fontSize = 36,
          FontWeight fontWeight = FontWeight.w700,
          String fontFamily = Fonts.primaryFont,
          List<Shadow> shadows = const []]) =>
      TextStyle(
          color: textColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          shadows: shadows);

  static TextStyle SectionTitle(
          [Color textColor = ThemeColors.secondary,
          double fontSize = 30,
          FontWeight fontWeight = FontWeight.w700,
          String fontFamily = Fonts.primaryFont,
          List<Shadow> shadows = const []]) =>
      TextStyle(
          color: textColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          shadows: shadows);

  static TextStyle SubText(
          [Color textColor = ThemeColors.secondary,
          double fontSize = 24,
          FontWeight fontWeight = FontWeight.w700,
          String fontFamily = Fonts.primaryFont,
          List<Shadow> shadows = const []]) =>
      TextStyle(
          color: textColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          shadows: shadows);

  static TextStyle DescText([
    Color textColor = ThemeColors.secondary,
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.w700,
    String fontFamily = Fonts.primaryFont,
    List<Shadow> shadows = const [],
    double height = 1,
    double letterSpacing = 0,
  ]) =>
      TextStyle(
          color: textColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          shadows: shadows,
          height: height,
          letterSpacing: letterSpacing);

  static TextStyle LabelText(
          [Color textColor = ThemeColors.secondary,
          double fontSize = 16,
          FontWeight fontWeight = FontWeight.w700,
          String fontFamily = Fonts.primaryFont,
          List<Shadow> shadows = const []]) =>
      TextStyle(
          color: textColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          shadows: shadows);

  static TextStyle SpanText(
          [Color textColor = ThemeColors.secondary,
          double fontSize = 14,
          FontWeight fontWeight = FontWeight.w400,
          String fontFamily = Fonts.primaryFont,
          List<Shadow> shadows = const []]) =>
      TextStyle(
          color: textColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          shadows: shadows);
}
