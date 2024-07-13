import 'package:injectable/injectable.dart';
import 'package:todo_apps/config/source_config/local/hive_config.dart';
import 'package:todo_apps/config/source_config/local/hive_config_impl.dart';

@module
abstract class InjectionModules {
  @lazySingleton
  @preResolve
  Future<HiveConfig> boxClient() => HiveConfigImpl.instance();

}
