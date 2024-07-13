import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_apps/app/widgets/circular_loading_widget.dart';
import 'package:todo_apps/app/widgets/main_button_widget.dart';
import 'package:todo_apps/config/themes/app_colors.dart';
import 'package:todo_apps/constants/core/image_assets_const.dart';
import 'package:todo_apps/utils/functions/get_context_func.dart';

@lazySingleton
class DialogService {
  final GetContextFunc getContext;
  DialogService(this.getContext);

  void loading() {
    showDialog(
      barrierDismissible: false,
      context: (getContext.i),
      builder: (BuildContext context) {
        return PopScope(
          canPop: false,
          onPopInvoked: (value) => Future.value(false),
          child: const CircularLoadingWidget(),
        );
      },
    );
  }

  void closeOverlay() {
    try {
      Navigator.pop(getContext.i);
    } on Exception catch (e) {
      throw ('Exception occurred in pop: $e');
    }
  }

  Future<T?> mainPopUp<T>({
    /// Default True
    bool barrierDismissible = true,
    required String title,
    required String desc,
    String urlImage = '',
    String mainButtonText = 'Close',
    bool useButton = true,
    String secondaryButtonText = '',
    Function()? mainButtonFunction,
    Function()? secondaryButtonFunction,
  }) async {
    return await showDialog<T>(
      barrierDismissible: barrierDismissible,
      context: (getContext.i),
      builder: (BuildContext context) {
        return PopScope(
          canPop: barrierDismissible,
          child: AlertDialog(
            backgroundColor: AppColors.gray900,
            actionsPadding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
            actions: useButton
                ? [
                    Row(
                      children: [
                        Expanded(
                          child: MainButtonWidget(
                            text: mainButtonText,
                            onTap: mainButtonFunction ??
                                () {
                                  closeOverlay();
                                },
                          ),
                        ),
                        if (secondaryButtonFunction != null)
                          SizedBox(
                            width: 10.w,
                          ),
                        if (secondaryButtonFunction != null)
                          Expanded(
                            child: MainButtonWidget.outlined(
                              text: secondaryButtonText,
                              onTap: secondaryButtonFunction,
                            ),
                          ),
                      ],
                    )
                  ]
                : null,
            actionsAlignment: MainAxisAlignment.spaceBetween,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (urlImage.isNotEmpty) ...[
                  if (urlImage.contains(".png"))
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.h),
                      child: Image.asset(
                        urlImage,
                        height: 128.h,
                      ),
                    )
                  else
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.h),
                      child: Lottie.asset(
                        urlImage,
                        height: 128.h,
                      ),
                    )
                ],
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                10.verticalSpaceFromWidth,
                Text(
                  desc,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<T?> dialogProblem<T>({
    /// Default True
    bool barrierDismissible = true,
    String title = 'Ups Ada Masalah',
    required String desc,
  }) async {
    return mainPopUp<T>(
      title: title,
      desc: desc,
      barrierDismissible: barrierDismissible,
      urlImage: ImageAssetsConst.dialogFailed,
    );
  }

  void dialogSuccess({
    /// Default True
    bool barrierDismissible = true,
    String title = 'Sukses',
    required String desc,
  }) {
    mainPopUp(
      title: title,
      desc: desc,
      barrierDismissible: barrierDismissible,
      urlImage: ImageAssetsConst.dialogSuccess,
    );
  }

  Future<T?> showDialogGeneral<T>({
    double margin = 40,
    double radius = 14,
    Color? color,
    Color? colorBorder,
    Widget? content,
    bool barrierDismissible = true,
    EdgeInsetsGeometry padding = const EdgeInsets.all(16),
    ScrollPhysics? physics,
    String? dialogName,
  }) async {
    return await showDialog<T>(
      barrierDismissible: barrierDismissible,
      context: (getContext.i),
      barrierColor: Colors.white.withOpacity(0.05),
      builder: (context) => PopScope(
        canPop: barrierDismissible,
        child: Center(
          child: SingleChildScrollView(
            physics: physics,
            child: Material(
              color: Colors.transparent,
              child: Container(
                margin: EdgeInsets.all(margin),
                padding: padding,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: color ?? AppColors.secondary,
                  borderRadius: BorderRadius.circular(
                    radius.r,
                  ),
                  border: Border.all(
                    color: colorBorder ?? color ?? AppColors.secondary,
                    width: 1,
                  ),
                ),
                child: content ?? const SizedBox(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
