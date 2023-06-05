import 'package:admin_panel/res/common/app_scaffold.dart';
import 'package:admin_panel/res/constant/app_assets.dart';
import 'package:admin_panel/view/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              width: 0.48.sw,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.multiply,
              opacity: const AlwaysStoppedAnimation(.5),
            ),
            Column(
              children: [
                Text(
                  "Welcome to SkillQode",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  "Sign In",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 0.25.sw,
                  child: TextField(
                    controller: TextEditingController(),
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
