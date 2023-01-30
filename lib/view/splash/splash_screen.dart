import 'package:admin_panel/res/common/app_scaffold.dart';
import 'package:admin_panel/res/constant/app_assets.dart';
import 'package:admin_panel/view/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Expanded(
        child: Center(
          child: Obx(() {
            return AnimatedOpacity(
              opacity: controller.animationStart.value ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                width: controller.animationStart.value ? MediaQuery.of(context).size.width * 0.22 : MediaQuery.of(context).size.width,
                child: Image.asset(
                  AppAssets.appLogo,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
