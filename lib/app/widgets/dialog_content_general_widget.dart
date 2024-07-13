import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_apps/app/widgets/main_button_widget.dart';
import 'package:todo_apps/app/widgets/show_picture.dart';
import 'package:todo_apps/config/themes/app_colors.dart';

class DialogContentGeneralWidget extends StatelessWidget {
  final VoidCallback? onTapPositiveButton;
  final VoidCallback? onTapNegativeButton;
  final String? description;

  /// if use this , [description] will be ignore.
  final Widget? descriptionWidget;

  final double distanceDescriptionWithButton;
  final double distanceTitleWithImage;
  final double fontSizeTitle;
  final String title;
  final String textPositiveButton;
  final String textNegativeButton;
  final String imagePath;
  final bool barrierDismissible;
  final String type;
  final bool isHorizontal;
  final Color? descColors;
  final double? imageSize;
  final TextStyle? descTextStyle;
  final bool isQoin;
  final bool isShowCloseButton;
  final bool isTitleBold;
  final EdgeInsetsGeometry? descPandding;

  const DialogContentGeneralWidget.oneButton({
    super.key,
    required this.imagePath,
    this.description,
    required this.title,
    this.onTapPositiveButton,
    required this.textPositiveButton,
    required this.barrierDismissible,
    this.descColors,
    this.imageSize,
    this.descTextStyle,
    this.isQoin = false,
    this.isShowCloseButton = false,
    this.isTitleBold = true,
    this.distanceDescriptionWithButton = 20,
    this.distanceTitleWithImage = 0,
    this.descPandding,
    this.fontSizeTitle = 16,
    this.descriptionWidget,
  })  : type = 'one-button',
        isHorizontal = true,
        textNegativeButton = '',
        onTapNegativeButton = null;

  const DialogContentGeneralWidget.twoButton({
    super.key,
    this.isQoin = false,
    required this.imagePath,
    this.description,
    required this.title,
    this.distanceDescriptionWithButton = 20,
    this.distanceTitleWithImage = 0,
    this.onTapPositiveButton,
    this.onTapNegativeButton,
    required this.textPositiveButton,
    required this.textNegativeButton,
    required this.barrierDismissible,
    this.isHorizontal = true,
    this.descColors,
    this.imageSize,
    this.descTextStyle,
    this.isShowCloseButton = false,
    this.isTitleBold = false,
    this.descPandding,
    this.fontSizeTitle = 16,
    this.descriptionWidget,
  }) : type = 'two-button';

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: barrierDismissible,
      child: Column(
        children: [
          Visibility(
            visible: isShowCloseButton,
            child: Container(
              width: 1.sw,
              alignment: Alignment.topRight,
              child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 24.sp,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
          Padding(
            padding: isShowCloseButton ? EdgeInsets.all(16.w) : EdgeInsets.zero,
            child: Column(
              children: [
                showPicture(imagePath, imageSize),
                SizedBox(
                  height: distanceTitleWithImage.w,
                ),
                if (title.isNotEmpty) ...[
                  Visibility(
                    visible: title.isNotEmpty,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: (fontSizeTitle).sp,
                        fontWeight: isTitleBold ? FontWeight.w600 : FontWeight.w400,
                        color: AppColors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                ],
                if (descriptionWidget != null) ...[
                  descriptionWidget!
                ] else ...[
                  Visibility(
                    visible: (description ?? "").isNotEmpty,
                    child: Padding(
                      padding: descPandding ?? EdgeInsets.only(top: 4.w),
                      child: Builder(builder: (_) {
                        final leng = (description ?? "").split(" ").length;

                        return Text(
                          description ?? "",
                          style: descTextStyle ??
                              TextStyle(
                                fontSize: leng >= 20 ? 11.sp : 14.sp,
                                color: descColors ?? Colors.black,
                              ),
                          textAlign: TextAlign.center,
                        );
                      }),
                    ),
                  ),
                ],
                SizedBox(
                  height: distanceDescriptionWithButton.w,
                ),
                Visibility(
                  visible: type == 'two-button',
                  replacement: MainButtonWidget(
                    primaryColor: AppColors.primary,
                    textColor: Colors.white,
                    borderRadius: 6.r,
                    text: textPositiveButton,
                    onTap: onTapPositiveButton,
                  ),
                  child: isHorizontal
                      ? Row(
                          children: [
                            Expanded(
                              child: MainButtonWidget.outlined(
                                textColor: AppColors.primary,
                                outlinedColor: AppColors.primary,
                                text: textNegativeButton,
                                onTap: onTapNegativeButton,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: MainButtonWidget(
                                primaryColor: AppColors.primary,
                                textColor: Colors.white,
                                text: textPositiveButton,
                                onTap: onTapPositiveButton,
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            MainButtonWidget(
                              primaryColor: AppColors.primary,
                              textColor: Colors.white,
                              text: textPositiveButton,
                              onTap: onTapPositiveButton,
                            ),
                            SizedBox(
                              height: 10.w,
                            ),
                            MainButtonWidget.outlined(
                              textColor: AppColors.primary,
                              outlinedColor: AppColors.primary,
                              text: textNegativeButton,
                              onTap: onTapNegativeButton,
                            )
                          ],
                        ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
