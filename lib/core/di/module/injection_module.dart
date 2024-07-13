import 'package:injectable/injectable.dart';
import 'package:todo_apps/config/source_config/local/hive_config.dart';
import 'package:todo_apps/config/source_config/local/hive_config_impl.dart';

/// `@module` adalah anotasi yang digunakan untuk menandai kelas
/// sebagai modul konfigurasi dependency injection. Ini berarti kelas
/// ini akan berisi definisi-definisi untuk objek-objek yang akan
/// di-inject (disuntikkan) ke dalam aplikasi.
@module
abstract class InjectionModules {
  /// `@lazySingleton` adalah anotasi yang digunakan untuk menandai bahwa
  /// objek yang di-injek akan berupa singleton (hanya ada satu instance di seluruh aplikasi),
  /// dan akan diinisialisasi secara malas (lazy initialization), yaitu hanya saat pertama kali diminta.
  ///
  /// `@preResolve` digunakan bersama dengan @lazySingleton untuk menandai bahwa
  /// objek yang di-injek akan diinisialisasi sebelum aplikasi benar-benar membutuhkannya (pre-resolve).
  /// Hal ini membantu dalam memastikan bahwa semua dependensi sudah siap saat aplikasi dimulai.
  @lazySingleton
  @preResolve
  Future<HiveConfig> boxClient() => HiveConfigImpl.instance();
}
