import 'package:admin_panel/res/constant/app_theme.dart';
import 'package:admin_panel/res/constant/constant.dart';
import 'package:admin_panel/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  RxBool animationStart = true.obs;

  void handleBrightnessChange(bool useLightMode) {
    themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
  }

  void handleMaterialVersionChange() {
    useMaterial3 = !useMaterial3;
  }

  void handleColorSelect(int value) {
    colorSelected = ColorSeed.values[value];
  }

  @override
  void onReady() {
    // TODO: implement onReady
    Future.delayed(const Duration(seconds: 1), () => animationStart.value = false);
    Future.delayed(const Duration(seconds: 3), () => Get.toNamed(RoutesName.loginScreen));
    super.onReady();
  }
}
