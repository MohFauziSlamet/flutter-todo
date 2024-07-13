import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_apps/core/di/injection.config.dart';

/// `GetIt.instance` digunakan untuk mendapatkan instance tunggal dari GetIt,
/// yang merupakan container dependency injection.
final getIt = GetIt.instance;

/// @InjectableInit digunakan untuk menandai fungsi atau metode yang akan menginisialisasi dependency injection.
/// initializerName: Nama dari fungsi inisialisasi yang akan digenerate (dalam kasus ini, $initGetIt).
/// preferRelativeImports: Menunjukkan apakah import yang dihasilkan akan menggunakan path relatif atau absolut.
/// asExtension: Menentukan apakah kode yang dihasilkan akan menggunakan ekstensi (extension) atau tidak.
/// get_context_func: Daftar direktori yang akan dipindai untuk mencari kelas-kelas yang dianotasi dengan @injectable.
@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
  asExtension: false,
  generateForDir: [
    'lib/app',
    'lib/core',
    'lib/config',
    'lib/utils/functions',
    'lib/utils/services',
  ],
)
Future<void> configureDependencies() async => $initGetIt(getIt);
