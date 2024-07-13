// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:todo_apps/app/features/home/presentation/blocs/bloc/home_bloc.dart'
    as _i17;
import 'package:todo_apps/app/features/splash/presentation/blocs/cubit/splash_cubit.dart'
    as _i7;
import 'package:todo_apps/app/features/task/data/datasources/local/task_local_datasource.dart'
    as _i5;
import 'package:todo_apps/app/features/task/data/repositories/task_repository_impl.dart'
    as _i9;
import 'package:todo_apps/app/features/task/domain/repositories/task_repository.dart'
    as _i8;
import 'package:todo_apps/app/features/task/domain/usecases/create_todo_uc.dart'
    as _i13;
import 'package:todo_apps/app/features/task/domain/usecases/delete_todo_uc.dart'
    as _i15;
import 'package:todo_apps/app/features/task/domain/usecases/get_all_todo_uc.dart'
    as _i11;
import 'package:todo_apps/app/features/task/domain/usecases/reorder_todo_uc.dart'
    as _i12;
import 'package:todo_apps/app/features/task/domain/usecases/update_todo_uc.dart'
    as _i14;
import 'package:todo_apps/app/features/task/presentation/blocs/cubit/edit_task_cubit.dart'
    as _i16;
import 'package:todo_apps/config/routes/app_router.dart' as _i4;
import 'package:todo_apps/config/source_config/local/hive_config.dart' as _i3;
import 'package:todo_apps/core/di/module/injection_module.dart' as _i18;
import 'package:todo_apps/utils/functions/get_context_func.dart' as _i6;
import 'package:todo_apps/utils/services/dialog_service.dart' as _i10;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectionModules = _$InjectionModules();
  await gh.lazySingletonAsync<_i3.HiveConfig>(
    () => injectionModules.boxClient(),
    preResolve: true,
  );
  gh.lazySingleton<_i4.AppRouter>(() => _i4.AppRouter());
  gh.lazySingleton<_i5.TaskLocalDataSource>(
      () => _i5.TaskLocalDataSourceImpl(hive: gh<_i3.HiveConfig>()));
  gh.lazySingleton<_i6.GetContextFunc>(
      () => _i6.GetContextFunc(gh<_i4.AppRouter>()));
  gh.lazySingleton<_i7.SplashCubit>(
      () => _i7.SplashCubit(gh<_i6.GetContextFunc>()));
  gh.lazySingleton<_i8.TaskRepository>(() => _i9.TaskRepositoryImpl(
      taskLocalDataSource: gh<_i5.TaskLocalDataSource>()));
  gh.lazySingleton<_i10.DialogService>(
      () => _i10.DialogService(gh<_i6.GetContextFunc>()));
  gh.lazySingleton<_i11.GetAllTodoUC>(
      () => _i11.GetAllTodoUC(repository: gh<_i8.TaskRepository>()));
  gh.lazySingleton<_i12.ReOrderTodoUC>(
      () => _i12.ReOrderTodoUC(taskRepository: gh<_i8.TaskRepository>()));
  gh.lazySingleton<_i13.CreateTodoUc>(
      () => _i13.CreateTodoUc(taskRepository: gh<_i8.TaskRepository>()));
  gh.lazySingleton<_i14.UpdateTodoUc>(
      () => _i14.UpdateTodoUc(taskRepository: gh<_i8.TaskRepository>()));
  gh.lazySingleton<_i15.DeleteTodoUc>(
      () => _i15.DeleteTodoUc(taskRepository: gh<_i8.TaskRepository>()));
  gh.lazySingleton<_i16.EditTaskCubit>(() => _i16.EditTaskCubit(
        gh<_i10.DialogService>(),
        gh<_i14.UpdateTodoUc>(),
        gh<_i6.GetContextFunc>(),
      ));
  gh.lazySingleton<_i17.HomeBloc>(() => _i17.HomeBloc(
        gh<_i6.GetContextFunc>(),
        gh<_i13.CreateTodoUc>(),
        gh<_i15.DeleteTodoUc>(),
        gh<_i11.GetAllTodoUC>(),
        gh<_i12.ReOrderTodoUC>(),
        gh<_i10.DialogService>(),
        gh<_i14.UpdateTodoUc>(),
      ));
  return getIt;
}

class _$InjectionModules extends _i18.InjectionModules {}
