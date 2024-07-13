import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_apps/app/features/splash/presentation/blocs/cubit/splash_cubit.dart';
import 'package:todo_apps/config/themes/app_colors.dart';
import 'package:todo_apps/constants/core/image_assets_const.dart';
import 'package:todo_apps/utils/functions/get_controller_func.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late SplashCubit _cubit;

  @override
  void initState() {
    _cubit = GetControllerFunc.call<SplashCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImageAssetsConst.logo,
                width: 1.sw / 2.4,
                fit: BoxFit.contain,
              ),
              19.verticalSpace,
              Text(
                'Tuntaskan Tugas, Raih Kesuksesan!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.gray900,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
