import 'package:get/get.dart';

import '../../utils/routes/routes_name.dart';

class SplashController extends GetxController {
  RxBool animationStart = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    Future.delayed(const Duration(milliseconds: 2500), () => animationStart.value = false);
    Future.delayed(const Duration(seconds: 3), () => Get.toNamed(RoutesName.loginScreen));
    super.onInit();
  }
}
