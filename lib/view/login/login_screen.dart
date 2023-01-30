import 'package:admin_panel/res/common/app_scaffold.dart';
import 'package:admin_panel/res/constant/app_assets.dart';
import 'package:admin_panel/view/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Expanded(
        child: Row(
          children: [
            Image.asset(
              AppAssets.loginImage,
              width: MediaQuery.of(context).size.width / 2.10,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.multiply,
              opacity: const AlwaysStoppedAnimation(.5),
            ),
          ],
        ),
      ),
    );
  }
}
