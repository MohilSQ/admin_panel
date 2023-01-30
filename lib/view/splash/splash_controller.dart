import 'package:admin_panel/utils/routes/routes_name.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  RxBool animationStart = true.obs;

  @override
  void onReady() {
    // TODO: implement onReady
    Future.delayed(const Duration(seconds: 1), () => animationStart.value = false);
    Future.delayed(const Duration(seconds: 3), () => Get.toNamed(RoutesName.loginScreen));
    super.onReady();
  }
}
