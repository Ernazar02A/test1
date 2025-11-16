import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:test1/core/storage/secure/secure_storage_keys.dart';
import '../base/storage_service.dart';

@lazySingleton
class SecureStorageManager {
  final StorageService _secureStorage;

  final _accessTokenController = StreamController<String?>.broadcast();
  Stream<String?> get accessTokenChanges => _accessTokenController.stream;

  SecureStorageManager(@Named('secure') this._secureStorage);

  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await Future.wait([
      _secureStorage.write(
        key: SecureStorageKeys.accessToken,
        value: accessToken,
      ),
      _secureStorage.write(
        key: SecureStorageKeys.refreshToken,
        value: refreshToken,
      ),
    ]);

    _accessTokenController.add(accessToken);
  }

  Future<String?> getAccessToken() async {
    return await _secureStorage.read(key: SecureStorageKeys.accessToken);
  }

  Future<String?> getRefreshToken() async {
    return await _secureStorage.read(key: SecureStorageKeys.refreshToken);
  }

  Future<void> clearTokens() async {
    await Future.wait([
      _secureStorage.delete(key: SecureStorageKeys.accessToken),
      _secureStorage.delete(key: SecureStorageKeys.refreshToken),
    ]);

    _accessTokenController.add(null);
  }

  @disposeMethod
  void dispose() {
    _accessTokenController.close();
  }
}