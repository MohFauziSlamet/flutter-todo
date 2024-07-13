import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_apps/config/source_config/local/hive_config.dart';

class HiveConfigImpl extends HiveConfig {
  final Box<dynamic> _encryptBox;

  HiveConfigImpl._(this._encryptBox);

  static Future<HiveConfigImpl> instance() async {
    // Inisialisasi Hive untuk Flutter
    await Hive.initFlutter();

    // Kunci aman yang digunakan untuk mengenkripsi dan mendekripsi data.
    const secureKey = 'TodoAppKey';
    // Menggunakan Flutter Secure Storage untuk menyimpan kunci enkripsi dengan aman
    const secureStorage = FlutterSecureStorage();

    // Membaca kunci enkripsi dari secure storage
    final encryptionKeyString = await secureStorage.read(key: secureKey);
    // if key not exists return null
    // Jika kunci enkripsi tidak ada, buat kunci baru dan simpan di secure storage.
    if (encryptionKeyString == null) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(
        key: secureKey,
        value: base64UrlEncode(key),
      );
    }

    // Membaca kunci enkripsi yang ada dari secure storage
    // Mengonversi kunci enkripsi dari string base64 ke Uint8List
    final key = await secureStorage.read(key: secureKey);
    final encryptionKeyUint8List = base64Url.decode(key!);

    // Membuka kotak Hive dengan kunci enkripsi
    final box = await Hive.openBox(
      'todo_apps',
      encryptionCipher: HiveAesCipher(encryptionKeyUint8List),
    );

    // Mengembalikan instance HiveConfigImpl dengan kotak Hive yang sudah dienkripsi
    return HiveConfigImpl._(box);

    /*
    Metode ini bertujuan untuk menginisialisasi Hive dengan enkripsi 
    menggunakan kunci yang disimpan dengan aman di Flutter Secure Storage. 
    Ini memastikan bahwa data yang disimpan dalam kotak Hive terlindungi dengan baik.
    */
  }

  /// Menghapus entri dalam kotak Hive yang sesuai dengan kunci yang diberikan.
  ///
  /// `key` : String yang merupakan kunci dari entri yang akan dihapus.
  @override
  Future<void> delete(String key) async {
    try {
      await _encryptBox.delete(key);
    } catch (e) {
      /// Jika terjadi error selama operasi penghapusan,
      /// error akan dilempar ulang (rethrow) untuk penanganan lebih lanjut.
      rethrow;
    }
  }

  /// Menghapus semua entri dalam kotak Hive yang memiliki kunci
  /// yang sesuai dengan daftar kunci yang diberikan.
  /// `keys`: Daftar string yang berisi kunci-kunci dari entri yang akan dihapus.
  @override
  Future<void> deleteAll(List<String> keys) async {
    try {
      await _encryptBox.deleteAll(keys);
    } catch (e) {
      /// Jika terjadi error selama operasi penghapusan,
      /// error akan dilempar ulang (rethrow) untuk penanganan lebih lanjut.
      rethrow;
    }
  }

  /// Mengambil nilai dari kotak Hive yang sesuai dengan kunci yang diberikan.
  /// `key`: String yang merupakan kunci dari data yang akan diambil.
  ///
  /// Future<T?>: Mengembalikan sebuah future yang akan selesai dengan nilai
  /// yang diambil dari kotak Hive, atau null jika tidak ada nilai yang sesuai
  /// dengan kunci yang diberikan.
  @override
  Future<T?> get<T>({required String key}) async {
    try {
      return await _encryptBox.get(key) as T?;
    } catch (e) {
      rethrow;
    }
  }

  /// Menghapus semua data yang ada dalam kotak Hive.
  ///
  @override
  Future<void> reset() async {
    try {
      await _encryptBox.clear();
    } catch (e) {
      /// Jika terjadi error selama operasi penghapusan,
      /// error akan dilempar ulang (rethrow) untuk penanganan lebih lanjut.
      rethrow;
    }
  }

  /// Menyimpan nilai dalam kotak Hive dengan kunci yang diberikan.
  ///
  /// key: String yang merupakan kunci dari data yang akan disimpan.
  /// data: Nilai yang akan disimpan dengan tipe generik T.
  @override
  Future<void> set<T>({required String key, required T data}) async {
    try {
      await _encryptBox.put(key, data);
    } catch (e) {
      /// Jika terjadi error selama operasi penghapusan,
      /// error akan dilempar ulang (rethrow) untuk penanganan lebih lanjut.
      rethrow;
    }
  }
}
