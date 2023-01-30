import 'package:admin_panel/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: dashAreaColor,
    colorScheme: const ColorScheme.light().copyWith(
      brightness: Brightness.light,
      primary: dashAreaColor,
      secondary: sideBarGreyColor,
      error: Colors.red,
      surface: Colors.white,
    ),
    scaffoldBackgroundColor: dashAreaColor,
    hoverColor: Colors.white12,
    splashColor: Colors.white12,
    shadowColor: Colors.white.withOpacity(0.18),
    splashFactory: InkRipple.splashFactory,
  );

  static ThemeData darkTheme = ThemeData();
}
