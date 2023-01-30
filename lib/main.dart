import 'package:admin_panel/res/constant/app_theme.dart';
import 'package:admin_panel/res/constant/constant.dart';
import 'package:admin_panel/utils/routes/routes.dart';
import 'package:admin_panel/utils/routes/routes_name.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
  doWhenWindowReady(() {
    appWindow.size = const Size(1400, 800);
    appWindow.minSize = const Size(1400, 800);
    appWindow.alignment = Alignment.center;
    appWindow.title = appName;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      title: appName,
      getPages: Routes.pages,
      initialRoute: RoutesName.splashScreen,
    );
  }
}
