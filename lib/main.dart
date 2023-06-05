import 'package:admin_panel/res/constant/app_strings.dart';
import 'package:admin_panel/utils/routes/routes.dart';
import 'package:admin_panel/utils/routes/routes_name.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'res/constant/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
  doWhenWindowReady(() {
    appWindow.size = const Size(1400, 800);
    appWindow.minSize = const Size(1400, 800);
    appWindow.alignment = Alignment.center;
    appWindow.title = AppStrings.appName;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 916),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        title: AppStrings.appName,
        getPages: Routes.pages,
        initialRoute: RoutesName.splashScreen,
      ),
    );
  }
}
