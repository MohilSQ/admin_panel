import 'package:admin_panel/res/common/app_button.dart';
import 'package:admin_panel/res/common/app_scaffold.dart';
import 'package:admin_panel/res/common/app_text_field.dart';
import 'package:admin_panel/res/constant/app_assets.dart';
import 'package:admin_panel/res/constant/app_colors.dart';
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.loginImage,
              width: 0.48.sw,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.multiply,
              opacity: const AlwaysStoppedAnimation(.5),
            ),
            const Spacer(),
            SizedBox(
              width: 0.28.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Welcome to SkillQode",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w500, fontSize: 28.sp),
                  ),
                  10.verticalSpace,
                  Text(
                    "Sign In",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600, fontSize: 20.sp),
                  ),
                  15.verticalSpace,
                  AppTextField(
                    controller: controller.userNameController,
                    hintText: "Username",
                    suffixImage: AppAssets.user,
                  ),
                  15.verticalSpace,
                  Obx(() {
                    return AppTextField(
                      controller: controller.passwordController,
                      hintText: "Password",
                      suffixImage: controller.isPasswordVisible.value ? AppAssets.eye : AppAssets.eyeOff,
                      obscureText: !controller.isPasswordVisible.value,
                      onSuffix: () {
                        controller.isPasswordVisible.value = !controller.isPasswordVisible.value;
                      },
                    );
                  }),
                  10.verticalSpace,
                  Row(
                    children: [
                      Obx(() {
                        return Transform.scale(
                          scale: 0.8,
                          child: Checkbox(
                            value: controller.rememberMe.value,
                            onChanged: (value) {
                              controller.rememberMe.value = value!;
                            },
                          ),
                        );
                      }),
                      Text(
                        "Remember me",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              color: AppColors.textGrayColor,
                            ),
                      ),
                      const Spacer(),
                      Text(
                        "Forgot password?",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              color: AppColors.textGrayColor,
                            ),
                      ),
                    ],
                  ),
                  25.verticalSpace,
                  Align(
                    alignment: Alignment.center,
                    child: AppButton(
                      onPressed: () {},
                      backGroundColor: AppColors.black100,
                      textColor: AppColors.textGrayColor,
                      width: 0.20.sw,
                      title: "Sign In",
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
