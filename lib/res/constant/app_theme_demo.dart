import 'package:admin_panel/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFF232939);
Color secondaryColor = const Color(0xFF1A202E);

final ColorScheme colorSchemeLight = const ColorScheme.light().copyWith(primary: primaryColor, secondary: secondaryColor);

final ColorScheme colorSchemeDark = const ColorScheme.dark().copyWith(primary: primaryColor, secondary: secondaryColor);

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: dashAreaColor,
    visualDensity: VisualDensity.comfortable,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.red,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 18.0,
        letterSpacing: 0.20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    popupMenuTheme: const PopupMenuThemeData(color: Colors.white),
    iconTheme: const IconThemeData(color: Color(0xff2b2b2b)),
    shadowColor: Colors.black.withOpacity(0.1),
    splashColor: Colors.white.withOpacity(0.1),
    hoverColor: Colors.transparent,
    splashFactory: InkRipple.splashFactory,
    highlightColor: Colors.transparent,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xFF232939),
    backgroundColor: Colors.white,
    errorColor: Colors.red,
    indicatorColor: primaryColor,
    disabledColor: const Color(0xffD5D7D8),
    textTheme: buildTextTheme(baseLight.textTheme),
    primaryTextTheme: buildTextTheme(baseLight.textTheme),
    colorScheme: colorSchemeLight.copyWith(secondary: primaryColor),
    useMaterial3: true,
  );

  ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(color: Colors.grey[700]),
    popupMenuTheme: const PopupMenuThemeData(color: Colors.black),
    iconTheme: const IconThemeData(color: Colors.white),
    shadowColor: Colors.black.withOpacity(0.4),
    primaryColor: primaryColor,
    indicatorColor: Colors.white,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    canvasColor: Colors.grey[900],
    backgroundColor: const Color(0xFF131416),
    scaffoldBackgroundColor: const Color(0xFF232939),
    buttonTheme: ButtonThemeData(colorScheme: colorSchemeLight, textTheme: ButtonTextTheme.primary),
    textTheme: buildTextTheme(baseLight.textTheme),
    primaryTextTheme: buildTextTheme(baseLight.textTheme),
    colorScheme: colorSchemeDark.copyWith(secondary: secondaryColor),
    useMaterial3: true,
  );
}

final ThemeData baseLight = ThemeData.light();
final ThemeData baseDark = ThemeData.dark();



TextTheme buildTextTheme(TextTheme base) {

  return base.copyWith(
    /// Body Text
    bodyText1: TextStyle(fontSize: 16.0, letterSpacing: 0.5, fontWeight: FontWeight.w400, color: base.bodyText1!.color),

    /// This style is flutter default body textStyle (without textStyle) ///
    bodyText2: TextStyle(fontSize: 14.0, letterSpacing: 0.25, fontWeight: FontWeight.w400, color: base.bodyText2!.color),

    /// Head Line
    headline1: TextStyle(fontSize: 96.0, letterSpacing: -1.5, fontWeight: FontWeight.w300, color: base.headline1!.color),
    headline2: TextStyle(fontSize: 60.0, letterSpacing: -0.5, fontWeight: FontWeight.w300, color: base.headline2!.color),
    headline3: TextStyle(fontSize: 48.0, letterSpacing: 0.0, fontWeight: FontWeight.w400, color: base.headline3!.color),
    headline4: TextStyle(fontSize: 34.0, letterSpacing: 0.25, fontWeight: FontWeight.w400, color: base.headline4!.color),
    headline5: TextStyle(fontSize: 24.0, letterSpacing: 0.0, fontWeight: FontWeight.w400, color: base.headline5!.color),
    headline6: TextStyle(fontSize: 20.0, letterSpacing: 0.15, fontWeight: FontWeight.w500, color: base.headline6!.color),

    /// Sub Title
    subtitle1: TextStyle(fontSize: 16.0, letterSpacing: 0.15, fontWeight: FontWeight.w400, color: base.subtitle1!.color),
    subtitle2: TextStyle(fontSize: 14.0, letterSpacing: 0.1, fontWeight: FontWeight.w500, color: base.subtitle2!.color),

    /// Caption
    caption: TextStyle(fontSize: 12.0, letterSpacing: 0.4, fontWeight: FontWeight.w400, color: base.caption!.color),

    /// Over Line
    overline: TextStyle(fontSize: 10.0, letterSpacing: 1.5, fontWeight: FontWeight.w400, color: base.overline!.color),

    /// Button
    button: TextStyle(fontSize: 14.0, letterSpacing: 1.25, fontWeight: FontWeight.w400, color: base.button!.color),
  );

/* ===================> Flutter SDK TextStyle <================== */

  /* headline1    96.0  light   -1.5  */
  /* headline2    60.0  light   -0.5  */
  /* headline3    48.0  regular  0.0  */
  /* headline4    34.0  regular  0.25 */
  /* headline5    24.0  regular  0.0  */
  /* headline6    20.0  medium   0.15 */
  /* subtitle1    16.0  regular  0.15 */
  /* subtitle2    14.0  medium   0.1  */
  /* bodyText2    16.0  regular  0.5  */
  /* bodyText1    14.0  regular  0.25 */
  /* button       14.0  medium   1.25 */
  /* caption      12.0  regular  0.4  */
  /* overline     10.0  regular  1.5  */
}
