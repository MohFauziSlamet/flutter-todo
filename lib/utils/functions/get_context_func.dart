import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_apps/config/routes/app_router.dart';

@lazySingleton
class GetContextFunc {
  final AppRouter _appRouter;

  GetContextFunc(this._appRouter);

  BuildContext get i {
    final context = _appRouter.navigatorKey.currentContext;
    return context ?? (throw ('Did you forget to set the route?'));
  }
}
