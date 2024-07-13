import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_apps/config/themes/app_colors.dart';

class MainButtonWidget extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color primaryColor;
  final Color? outlinedColor;
  final Color splashColor;
  final Color textColor;
  final double? minimumWidth;
  final double? maximumWidth;
  final double? minimumHeight;
  final double? maximumHeight;
  final EdgeInsets? padding;
  final String type;
  final Widget? child;
  final double elevation;
  final double? borderRadius;
  final TextStyle? textStyle;
  final MaterialTapTargetSize? tapTargetSize;
  const MainButtonWidget({
    super.key,
    this.onTap,
    this.elevation = 0,
    this.borderRadius,
    required this.text,
    this.splashColor = Colors.white,
    this.textColor = AppColors.white,
    this.minimumWidth,
    this.maximumWidth,
    this.padding,
    this.tapTargetSize,
    this.textStyle,
    this.minimumHeight,
    this.primaryColor = AppColors.primary,
    this.maximumHeight,
  })  : child = null,
        outlinedColor = null,
        type = 'text';
  const MainButtonWidget.outlined({
    super.key,
    this.onTap,
    this.elevation = 0,
    this.borderRadius,
    required this.text,
    this.outlinedColor = AppColors.primary,
    this.primaryColor = AppColors.secondary,
    this.splashColor = AppColors.primary,
    this.textColor = AppColors.primary,
    this.minimumWidth,
    this.maximumWidth,
    this.tapTargetSize,
    this.padding,
    this.minimumHeight,
    this.maximumHeight,
    this.textStyle,
  })  : type = 'text',
        child = null;
  const MainButtonWidget.outlinedWithChild({
    super.key,
    this.onTap,
    this.elevation = 0,
    required this.outlinedColor,
    this.primaryColor = AppColors.secondary,
    this.splashColor = AppColors.primary,
    this.minimumWidth,
    this.padding,
    this.borderRadius,
    required this.child,
    this.minimumHeight,
    this.maximumHeight,
    this.maximumWidth,
    this.tapTargetSize,
  })  : type = 'child',
        textColor = Colors.white,
        text = '',
        textStyle = null;
  const MainButtonWidget.withChild({
    super.key,
    this.onTap,
    this.elevation = 0,
    this.splashColor = Colors.white,
    this.minimumWidth,
    this.padding,
    this.borderRadius,
    required this.child,
    this.maximumWidth,
    this.minimumHeight,
    this.maximumHeight,
    this.tapTargetSize,
    this.primaryColor = AppColors.primary,
  })  : type = 'child',
        outlinedColor = null,
        textColor = Colors.white,
        text = '',
        textStyle = null;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: AppColors.gray400,
        disabledForegroundColor: AppColors.gray400,
        elevation: elevation,
        backgroundColor: primaryColor,
        foregroundColor: splashColor,
        tapTargetSize: tapTargetSize ?? MaterialTapTargetSize.shrinkWrap,
        shadowColor: Colors.transparent,
        minimumSize: Size(
          minimumWidth ?? double.infinity,
          minimumHeight ?? 0,
        ),
        maximumSize: Size(
          maximumWidth ?? double.infinity,
          maximumHeight ?? 48.h,
        ),
        padding:
            padding ?? EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
          side: outlinedColor == null
              ? BorderSide.none
              : BorderSide(
                  width: 1.4,
                  color: outlinedColor!,
                ),
        ),
      ),
      child: (type == 'child')
          ? child
          : Text(
              text,
              style: textStyle ??
                  TextStyle(
                    color: textColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
            ),
    );
  }
}
