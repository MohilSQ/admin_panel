import 'package:admin_panel/utils/routes/routes_name.dart';
import 'package:admin_panel/view/login/login_binding.dart';
import 'package:admin_panel/view/login/login_screen.dart';
import 'package:admin_panel/view/splash/splash_binding.dart';
import 'package:admin_panel/view/splash/splash_screen.dart';
import 'package:get/get.dart';

GetPage getPage({String? name, GetPageBuilder? page, Bindings? binding}) {
  return GetPage(
    name: name!,
    page: page!,
    binding: binding,
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 1000),
  );
}

class Routes {
  static List<GetPage> pages = [
    getPage(name: RoutesName.splashScreen, page: () => const SplashScreen(), binding: SplashBinding()),
    getPage(name: RoutesName.loginScreen, page: () => const LoginScreen(), binding: LoginBinding()),
  ];
}
