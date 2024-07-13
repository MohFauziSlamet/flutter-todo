// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    EditTaskRoute.name: (routeData) {
      final args = routeData.argsAs<EditTaskRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditTaskPage(
          key: args.key,
          selectedTodo: args.selectedTodo,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [EditTaskPage]
class EditTaskRoute extends PageRouteInfo<EditTaskRouteArgs> {
  EditTaskRoute({
    Key? key,
    required TodoEntity selectedTodo,
    List<PageRouteInfo>? children,
  }) : super(
          EditTaskRoute.name,
          args: EditTaskRouteArgs(
            key: key,
            selectedTodo: selectedTodo,
          ),
          initialChildren: children,
        );

  static const String name = 'EditTaskRoute';

  static const PageInfo<EditTaskRouteArgs> page =
      PageInfo<EditTaskRouteArgs>(name);
}

class EditTaskRouteArgs {
  const EditTaskRouteArgs({
    this.key,
    required this.selectedTodo,
  });

  final Key? key;

  final TodoEntity selectedTodo;

  @override
  String toString() {
    return 'EditTaskRouteArgs{key: $key, selectedTodo: $selectedTodo}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
