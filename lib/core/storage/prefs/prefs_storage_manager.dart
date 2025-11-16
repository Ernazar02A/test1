import 'package:injectable/injectable.dart';
import 'package:test1/core/storage/prefs/prefs_storage_keys.dart';

import '../base/storage_service.dart';

@lazySingleton
class PrefsStorageManager {
  final StorageService _storageService;

  PrefsStorageManager(@Named('prefs') this._storageService);

  Future<void> saveLanguage(String language) async {
    await _storageService.write(
      key: PrefsStorageKeys.language,
      value: language,
    );
  }

  Future<String?> getLanguage() async {
    return await _storageService.read(key: PrefsStorageKeys.language);
  }

  Future<void> clearAll() async {
    await Future.wait([
      _storageService.delete(key: PrefsStorageKeys.language),
      _storageService.delete(key: PrefsStorageKeys.language),
    ]);
  }
}
