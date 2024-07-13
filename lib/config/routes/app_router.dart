import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_apps/app/features/home/presentation/pages/home_page.dart';
import 'package:todo_apps/app/features/splash/presentation/pages/splash_page.dart';
import 'package:todo_apps/app/features/task/domain/entities/todo_entity.dart';
import 'package:todo_apps/app/features/task/presentation/pages/edit_task_page.dart';
import 'package:todo_apps/config/routes/route_name.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: "Route|Page,Route",
  generateForDir: [
    'lib/config/routes',
    'lib/app/features',
  ],
)
@lazySingleton
class AppRouter extends _$AppRouter {
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
