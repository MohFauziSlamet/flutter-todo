import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_apps/config/themes/app_colors.dart';

class MainTextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final Function()? onTap;
  final TextCapitalization textCapitalization;
  final TextAlignVertical textAlignVertical;
  final bool readOnly;
  final bool enabled;
  final bool obscureText;
  final bool isDense;
  final int? maxLines;
  final TextInputType? textInputType;
  final String? labelText;
  final String? hintText;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? suffix;
  final Widget? prefix;
  final Widget? prefixIcon;
  final String? prefixText;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final TextStyle? errorStyle;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode autovalidateMode;
  final EdgeInsets? contentPadding;
  final Function(String value)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final InputDecoration? decoration;
  final bool withCounterText;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? enableBorder;

  const MainTextFormFieldWidget({
    super.key,
    this.controller,
    this.onTap,
    this.hintText,
    this.initialValue,
    this.errorText,
    this.prefix,
    this.labelStyle,
    this.prefixIcon,
    this.errorStyle,
    this.onChanged,
    this.contentPadding,
    this.focusNode,
    this.textCapitalization = TextCapitalization.none,
    this.textAlignVertical = TextAlignVertical.bottom,
    this.readOnly = false,
    this.enabled = true,
    this.obscureText = false,
    this.isDense = true,
    this.textInputType,
    this.maxLines = 1,
    this.labelText,
    this.suffixIcon,
    this.suffix,
    this.maxLength,
    this.textInputAction,
    this.validator,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.inputFormatters,
    this.hintStyle,
    this.prefixText,
    this.style,
    this.decoration,
    this.onSubmitted,
    this.withCounterText = false,
    this.border,
    this.focusedBorder,
    this.enableBorder,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: textAlignVertical,
      onTap: onTap,
      onTapOutside: (event) {
        if (FocusScope.of(context).hasFocus) {
          FocusScope.of(context).unfocus();
        }
      },
      controller: controller ?? TextEditingController(),
      onChanged: onChanged,
      focusNode: focusNode,
      textCapitalization: textCapitalization,
      readOnly: readOnly,
      enabled: enabled,
      obscureText: obscureText,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      maxLines: maxLines,
      validator: validator,
      onFieldSubmitted: onSubmitted ??
          (value) {
            FocusScope.of(context).unfocus();
          },
      autovalidateMode: autovalidateMode,
      decoration: decoration ??
          InputDecoration(
            prefix: prefix,
            prefixIcon: prefixIcon,
            labelText: labelText,
            prefixText: prefixText,
            labelStyle: labelStyle ??
                TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.gray900,
                ),
            errorText: errorText,
            errorStyle: errorStyle ??
                TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.red,
                ),
            floatingLabelStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w300,
              color: AppColors.gray900,
            ),
            hintText: hintText,
            hintStyle: hintStyle ??
                TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.gray300,
                ),
            counterText: withCounterText ? null : "",
            suffixIcon: suffixIcon,
            contentPadding: contentPadding ??
                EdgeInsets.symmetric(
                  vertical: 18.h,
                  horizontal: 13.w,
                ),
            suffixIconConstraints: BoxConstraints(
              minWidth: 24.w,
              maxHeight: 24.w,
            ),
            suffix: suffix,
            isDense: isDense,
            border: border ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.r),
                  ),
                  borderSide: const BorderSide(
                    width: 1,
                    color: AppColors.primary,
                  ),
                ),
            focusedBorder: focusedBorder ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.r),
                  ),
                  borderSide: const BorderSide(
                    width: 1,
                    color: AppColors.primary,
                  ),
                ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.r),
              ),
              borderSide: const BorderSide(
                width: 1,
                color: AppColors.gray300,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.r),
              ),
              borderSide: const BorderSide(
                width: 1,
                color: Colors.red,
              ),
            ),
            enabledBorder: enableBorder ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.r),
                  ),
                  borderSide: const BorderSide(
                    width: 1,
                    color: AppColors.primary,
                  ),
                ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.red,
              ),
            ),
          ),
      style: style ??
          TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.gray900,
          ),
      textInputAction: textInputAction ?? TextInputAction.done,
    );
  }
}
