import 'package:admin_panel/res/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

/// <<< Common App button --------- >>>

class AppButton extends StatelessWidget {
  final String? title;
  final bool? disableButton;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final double? height;
  final double? width;
  final Widget? child;
  final IconData? icon;
  final String? image;
  final Color? backGroundColor;
  final Color? textColor;

  const AppButton({
    super.key,
    this.title = "",
    required this.onPressed,
    this.onLongPress,
    this.disableButton = false,
    this.height,
    this.width,
    this.child,
    this.icon,
    this.image = "",
    this.backGroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disableButton! ? null : onPressed,
      onLongPress: disableButton! ? null : onLongPress,
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            fixedSize: MaterialStatePropertyAll(Size(width ?? Get.width, height ?? 40.h)),
            backgroundColor: MaterialStatePropertyAll(backGroundColor ?? AppColors.buttonBlueColor),
            overlayColor: MaterialStatePropertyAll(backGroundColor ?? AppColors.buttonBlueColor),
          ),
      child: child ??
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  color: Colors.white,
                  size: 24,
                ),
                const SizedBox(width: 5),
              ],
              if (image!.isNotEmpty) ...[
                image!.contains(".svg")
                    ? SvgPicture.asset(
                        image!,
                        height: 22,
                      )
                    : Image.asset(
                        image!,
                        height: 22,
                      ),
                const SizedBox(width: 5)
              ],
              if (title!.isNotEmpty)
                Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: textColor,
                      ),
                )
            ],
          ),
    );
  }
}
