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
    useMaterial3: true,
  );

  static ThemeData darkTheme = ThemeData();
}

enum ColorSeed {
  baseColor('M3 Baseline', Color(0xff6750a4)),
  indigo('Indigo', Colors.indigo),
  blue('Blue', Colors.blue),
  teal('Teal', Colors.teal),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  orange('Orange', Colors.orange),
  deepOrange('Deep Orange', Colors.deepOrange),
  pink('Pink', Colors.pink);

  const ColorSeed(this.label, this.color);
  final String label;
  final Color color;
}
