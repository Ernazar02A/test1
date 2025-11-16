
class StorageException implements Exception {
  final String message;
  final String? code;
  final dynamic originalError;

  StorageException(
      this.message, {
        this.code,
        this.originalError,
      });

  @override
  String toString() => 'StorageException: $message';
}