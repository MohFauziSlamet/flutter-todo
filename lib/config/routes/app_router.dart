import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_apps/app/features/home/presentation/pages/home_page.dart';
import 'package:todo_apps/app/features/splash/presentation/pages/splash_page.dart';
import 'package:todo_apps/app/features/task/domain/entities/todo_entity.dart';
import 'package:todo_apps/app/features/task/presentation/pages/edit_task_page.dart';
import 'package:todo_apps/config/routes/route_name.dart';

part 'app_router.gr.dart';

/// replaceInRouteName: Menentukan string yang akan diganti dalam nama rute.
/// Dalam hal ini, Route dan Page akan diganti dengan Route.
///
/// generateForDir: Menentukan direktori mana yang akan di-scan untuk menemukan definisi rute.
@AutoRouterConfig(
  replaceInRouteName: "Route|Page,Route",
  generateForDir: [
    'lib/config/routes',
    'lib/app/features',
  ],
)

/// Dengan menggunakan @lazySingleton, aplikasi dapat mengelola dan menyediakan
/// objek AppRouter secara efisien, dengan memastikan hanya ada satu instance yang
/// digunakan di seluruh aplikasi, dan diinisialisasi secara lazy (hanya saat diperlukan).
/// Ini mendukung praktik-praktik desain yang baik dalam manajemen ketergantungan dan
/// penggunaan sumber daya dalam aplikasi Flutter.
@lazySingleton
class AppRouter extends _$AppRouter {
  /// Menentukan jenis rute default yang akan digunakan oleh aplikasi.
  /// Dalam kasus ini, rute default adalah RouteType.material.
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: AppRouteName.splash,
          initial: true,
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: AppRouteName.home,
        ),
        AutoRoute(
          page: EditTaskRoute.page,
          path: AppRouteName.editTask,
        ),
      ];
}
