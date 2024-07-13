import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_apps/core/loggers/app_logger.dart';

class BlocEventLogger extends BlocObserver {
  final String blocErrorLogTag = "Bloc-Error";
  final String blocEventLogTag = "Bloc-Event";

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (kDebugMode) {
      AppLogger.call('$event', name: '$blocEventLogTag : (${bloc.runtimeType})');
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      AppLogger.call('$change', name: 'onChange(${bloc.runtimeType})');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    if (kDebugMode) {
      AppLogger.call(
        ' $error, $stackTrace)',
        name: '$blocErrorLogTag : (${bloc.runtimeType})',
      );
    }
  }
}
