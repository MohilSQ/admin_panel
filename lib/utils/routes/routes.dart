import 'package:admin_panel/utils/routes/routes_name.dart';
import 'package:admin_panel/view/login/login_binding.dart';
import 'package:admin_panel/view/login/login_screen.dart';
import 'package:admin_panel/view/splash/splash_binding.dart';
import 'package:admin_panel/view/splash/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static List<GetPage> pages = [
    GetPage(name: RoutesName.splashScreen, page: () => const SplashScreen(), binding: SplashBinding()),
    GetPage(name: RoutesName.loginScreen, page: () => const LoginScreen(), binding: LoginBinding()),
  ];
}
