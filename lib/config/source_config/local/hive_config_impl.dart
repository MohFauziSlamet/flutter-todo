import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_apps/config/source_config/local/hive_config.dart';

class HiveConfigImpl extends HiveConfig {
  final Box<dynamic> _encryptBox;

  HiveConfigImpl._(this._encryptBox);

  static Future<HiveConfigImpl> instance() async {
    await Hive.initFlutter();
    const secureKey = 'TodoAppKey';
    const secureStorage = FlutterSecureStorage();
    // if key not exists return null
    final encryptionKeyString = await secureStorage.read(key: secureKey);
    if (encryptionKeyString == null) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(
        key: secureKey,
        value: base64UrlEncode(key),
      );
    }

    final key = await secureStorage.read(key: secureKey);
    final encryptionKeyUint8List = base64Url.decode(key!);

    final box = await Hive.openBox(
      'todo_apps',
      encryptionCipher: HiveAesCipher(encryptionKeyUint8List),
    );
    return HiveConfigImpl._(box);
  }

  @override
  Future<void> delete(String key) async {
    try {
      await _encryptBox.delete(key);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteAll(List<String> keys) async {
    try {
      await _encryptBox.deleteAll(keys);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<T?> get<T>({required String key}) async {
    try {
      return await _encryptBox.get(key) as T?;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> reset() async {
    try {
      await _encryptBox.clear();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> set<T>({required String key, required T data}) async {
    try {
      await _encryptBox.put(key, data);
    } catch (e) {
      rethrow;
    }
  }
}
