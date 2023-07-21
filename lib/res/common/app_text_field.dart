import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/app_colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final TextStyle? style;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final bool? autoFocus;
  final bool? enabled;
  final bool? obscureText;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final bool? enableInteractiveSelection;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefixChild;
  final String? prefixImage;
  final Widget? suffixChild;
  final String? suffixImage;
  final void Function()? onSuffix;
  final EdgeInsetsGeometry? contentPadding;
  final bool? isDense;
  final bool? showError;
  final String? errorMessage;

  const AppTextField({
    super.key,
    this.controller,
    this.initialValue,
    this.style,
    this.maxLines,
    this.textInputAction,
    this.keyboardType,
    this.validator,
    this.autoFocus = false,
    this.enabled = true,
    this.obscureText = false,
    this.onTap,
    this.onChanged,
    this.onEditingComplete,
    this.enableInteractiveSelection,
    this.hintText,
    this.hintStyle,
    this.prefixChild,
    this.prefixImage,
    this.suffixChild,
    this.suffixImage,
    this.onSuffix,
    this.showError = false,
    this.errorMessage,
    this.contentPadding,
    this.isDense,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          controller: controller,
          initialValue: initialValue,
          style: style ?? Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 12.sp),
          textAlignVertical: TextAlignVertical.center,
          cursorRadius: Radius.circular(10.r),
          maxLines: maxLines ?? 1,
          textInputAction: textInputAction ?? TextInputAction.next,
          keyboardType: keyboardType ?? TextInputType.text,
          validator: validator,
          autofocus: autoFocus!,
          enabled: enabled,
          obscureText: obscureText!,
          onTap: onTap,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          enableInteractiveSelection: enableInteractiveSelection ?? true,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle ?? Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.textGrayColor, fontSize: 12.sp),
            prefixIconConstraints: BoxConstraints(maxHeight: 32.h, minWidth: 32.w),
            prefixIcon: prefixChild ?? (prefixImage != null ? SvgPicture.asset(prefixImage!) : null),
            suffixIconConstraints: BoxConstraints(maxHeight: 32.h, minWidth: 32.w),
            suffixIcon: suffixChild ??
                (suffixImage != null
                    ? IconButton(
                        onPressed: onSuffix ?? () {},
                        icon: SvgPicture.asset(suffixImage!),
                      )
                    : null),
            contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
            isDense: isDense ?? true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.r)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6.r), borderSide: const BorderSide(color: AppColors.textGrayColor)),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6.r), borderSide: const BorderSide(color: AppColors.textGrayColor)),
            disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6.r), borderSide: const BorderSide(color: AppColors.textGrayColor)),
          ),
        ),
        if (showError!)
          AnimatedContainer(
            height: showError! ? 10.h : 0,
            alignment: Alignment.centerLeft,
            duration: const Duration(milliseconds: 200),
            margin: EdgeInsets.only(top: 5.h),
            child: Text(
              errorMessage ?? "",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).colorScheme.error.withOpacity(0.9),
                  ),
            ),
          ),
      ],
    );
  }
}
