import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test1/core/storage/base/storage_exception.dart';
import 'package:test1/core/storage/base/storage_service.dart';

@LazySingleton(as: StorageService)
@Named('prefs')
class PrefsStorageServiceImpl implements StorageService {
  @override
  Future<void> write({required String key, required String value}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(key, value);
    } catch (e) {
      throw StorageException('Failed to write data: $e');
    }
  }

  @override
  Future<String?> read({required String key}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(key);
    } catch (e) {
      throw StorageException('Failed to read data: $e');
    }
  }

  @override
  Future<void> delete({required String key}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(key);
    } catch (e) {
      throw StorageException('Failed to delete data: $e');
    }
  }

  @override
  Future<void> deleteAll() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
    } catch (e) {
      throw StorageException('Failed to delete all data: $e');
    }
  }
}