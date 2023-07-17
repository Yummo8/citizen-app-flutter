import 'package:flutter/material.dart';

class ThemeColors {
  static const Color background = Color(0xffedf3ff);
  static const Color primary = Color(0xffc8102e);
  static const Color onPrimary = Color(0x1Ff95F80);
  static const Color secondary = Color(0xff012169);
  static const Color onSecondary = Color(0xff000000);
  static const Color input = Color(0xFFF6F7F9);
  static const Color label = Color(0xFFACADAF);
  static const Color border = Color(0xFF3E3E3E);
  static const Color counterColor = Color(0xFF2A9918);
  static const Color progressBarColor = Color(0xFF012169);
  static const Gradient gradient1 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0x4c012169),
      Color(0x4cffffff),
      Color(0x4cffffff),
      Color(0x4cc8102e),
    ],
  );
  static const Gradient gradient2 = LinearGradient(
    begin: Alignment(-0.98, 0.21),
    end: Alignment(0.98, -0.21),
    colors: [
      Color(0x4C012169),
      Color.fromRGBO(255, 255, 255, 0.3),
      Color.fromRGBO(255, 255, 255, 0.3),
    ],
  );
  static const Gradient gradient3 = LinearGradient(
    begin: Alignment(0, 0.51),
    end: Alignment(0.9, 0),
    colors: [
      Color(0x4cffffff),
      Color(0x33FF0000),
    ],
  );
}
