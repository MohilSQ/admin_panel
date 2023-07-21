import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// <<< To management App light and dark theme and typography --------- >>>

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    /// Colors
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white100,
    disabledColor: const Color(0x99b7b6b6),
    hoverColor: const Color(0x4DC8C8C8),
    splashColor: const Color(0x66C8C8C8),
    shadowColor: const Color(0x12000000),
    colorSchemeSeed: AppColors.dashAreaColor,

    /// Gesture
    splashFactory: InkRipple.splashFactory,
    visualDensity: VisualDensity.comfortable,
    highlightColor: Colors.transparent,
    indicatorColor: AppColors.dashAreaColor,
    useMaterial3: true,

    /// Button
    // buttonTheme:,
    // buttonColor: ,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.dashAreaColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10).r)),
      ),
    ),

    /// Text
    textTheme: buildTextTheme(ThemeData.light().textTheme),
    primaryTextTheme: buildTextTheme(ThemeData.light().textTheme),
    fontFamily: "SF Pro Rounded",

    /// Icon
    iconTheme: const IconThemeData(color: Color(0xff2b2b2b)),
    // iconButtonTheme: ,

    /// AppBar
    appBarTheme: const AppBarTheme(color: AppColors.white100),

    /// Divider
    // dividerColor: ,
    // dividerTheme: ,

    /// Menu
    popupMenuTheme: const PopupMenuThemeData(color: AppColors.white100),
    // dropdownMenuTheme: ,

    /// Dialog Box
    // dialogTheme: ,
    // dialogBackgroundColor: ,

    /// Note: uncomment if you using copyWith theme or it will throw error.
    // primaryColor: AppColors.primaryColor,
    // colorScheme: const ColorScheme.light().copyWith(
    //   brightness: Brightness.light,
    //   primary: AppColors.primaryColor,
    //   secondary: AppColors.secondaryColor,
    //   error: Colors.red,
    //   surface: Colors.white,
    // ),
  );

  static ThemeData darkTheme = ThemeData(
    /// Colors
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.dashAreaColor,
    disabledColor: const Color(0x99b7b6b6),
    hoverColor: const Color(0x4DC8C8C8),
    splashColor: const Color(0x66C8C8C8),
    shadowColor: const Color(0x12FFFFFF),
    colorSchemeSeed: AppColors.dashAreaColor,

    /// Gesture
    splashFactory: InkRipple.splashFactory,
    visualDensity: VisualDensity.comfortable,
    highlightColor: Colors.transparent,
    indicatorColor: AppColors.dashAreaColor,
    useMaterial3: true,

    /// Button
    // buttonTheme:,
    // buttonColor: ,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.buttonBlueColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h))),
      ),
    ),

    /// Text
    textTheme: buildTextTheme(ThemeData.light().textTheme),
    primaryTextTheme: buildTextTheme(ThemeData.light().textTheme),

    /// Icon
    iconTheme: const IconThemeData(color: Color(0xff989797)),
    // iconButtonTheme: ,

    /// AppBar
    appBarTheme: const AppBarTheme(color: AppColors.sideBarGreyColor),

    /// Divider
    // dividerColor: ,
    // dividerTheme: ,

    /// Menu
    popupMenuTheme: const PopupMenuThemeData(color: AppColors.sideBarGreyColor),
    // dropdownMenuTheme: ,

    /// Dialog Box
    dialogTheme: const DialogTheme(backgroundColor: AppColors.sideBarGreyColor),
    // dialogBackgroundColor: ,

    /// Note: uncomment if you using copyWith theme or it will throw error.
    // primaryColor: AppColors.primaryColor,
    // colorScheme: const ColorScheme(
    //   brightness: Brightness.light,
    //   primary: AppColors.primaryColor,
    //   secondary: AppColors.secondaryColor,
    //   error: Colors.red,
    //   surface: Colors.white,
    // ),
  );
}

TextTheme buildTextTheme(TextTheme base) {
  return TextTheme(
    /// Body Text
    bodySmall: GoogleFonts.poppins(textStyle: base.bodySmall!.copyWith(fontSize: 12.sp, color: AppColors.white100)),
    bodyMedium: GoogleFonts.poppins(textStyle: base.bodyMedium!.copyWith(fontSize: 14.sp, color: AppColors.white100)),
    bodyLarge: GoogleFonts.poppins(textStyle: base.bodyLarge!.copyWith(fontSize: 16.sp, color: AppColors.white100)),

    /// Label Text
    labelSmall: GoogleFonts.poppins(textStyle: base.labelSmall!.copyWith(fontSize: 11.sp, color: AppColors.white100)),
    labelMedium: GoogleFonts.poppins(textStyle: base.labelMedium!.copyWith(fontSize: 12.sp, color: AppColors.white100)),
    labelLarge: GoogleFonts.poppins(textStyle: base.labelLarge!.copyWith(fontSize: 14.sp, color: AppColors.white100)),

    /// Title Text
    titleSmall: GoogleFonts.poppins(textStyle: base.titleSmall!.copyWith(fontSize: 14.sp, color: AppColors.white100)),
    titleMedium: GoogleFonts.poppins(textStyle: base.titleMedium!.copyWith(fontSize: 16.sp, color: AppColors.white100)),
    titleLarge: GoogleFonts.poppins(textStyle: base.titleLarge!.copyWith(fontSize: 22.sp, color: AppColors.white100)),

    /// Headline Text
    headlineSmall: GoogleFonts.poppins(textStyle: base.headlineSmall!.copyWith(fontSize: 24.sp, color: AppColors.white100)),
    headlineMedium: GoogleFonts.poppins(textStyle: base.headlineMedium!.copyWith(fontSize: 28.sp, color: AppColors.white100)),
    headlineLarge: GoogleFonts.poppins(textStyle: base.headlineLarge!.copyWith(fontSize: 32.sp, color: AppColors.white100)),

    /// Display Text
    displaySmall: GoogleFonts.poppins(textStyle: base.displaySmall!.copyWith(fontSize: 36.sp, color: AppColors.white100)),
    displayMedium: GoogleFonts.poppins(textStyle: base.displayMedium!.copyWith(fontSize: 45.sp, color: AppColors.white100)),
    displayLarge: GoogleFonts.poppins(textStyle: base.displayLarge!.copyWith(fontSize: 57.sp, color: AppColors.white100)),
  );
}

/// ---- Flutter official material 3 typography font size --------------- >>>
/*
Body Small  Size: 12, Height: 1.33
Body Medium  Size: 14, Height: 1.43
Body Large  Size: 16, Height: 1.5

Label Small  Size: 11, Height: 1.45
Label Medium  Size: 12, Height: 1.33
Label Large  Size: 14, Height: 1.43

Title Small  Size: 14, Height: 1.43
Title Medium  Size: 16, Height: 1.5
Title Large  Size: 22, Height: 1.27

Headline Small  Size: 24, Height: 1.33
Headline Medium  Size: 28, Height: 1.29
Headline Large  Size: 32, Height: 1.25

Display Small  Size: 36, Height: 1.22
Display Medium  Size: 45, Height: 1.16
Display Large  Size: 57, Height: 1.12
*/
