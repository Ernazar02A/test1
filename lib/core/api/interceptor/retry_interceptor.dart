import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:test1/di/app_injection.dart';

@lazySingleton
class RetryInterceptor extends Interceptor {
  static const int maxRetries = 3;
  final Dio _plainDio;

  RetryInterceptor(@plainDio this._plainDio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final retryCount = err.requestOptions.extra['retryCount'] ?? 0;

    if (_shouldRetry(err) && retryCount < maxRetries) {
      err.requestOptions.extra['retryCount'] = retryCount + 1;

      final delay = Duration(seconds: retryCount + 1);
      await Future.delayed(delay);

      try {

        final response = await _plainDio.fetch(err.requestOptions);
        return handler.resolve(response);
      } catch (e) {
        return handler.next(err);
      }
    }

    handler.next(err);
  }

  bool _shouldRetry(DioException err) {
    return err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.connectionError ||
        (err.response?.statusCode ?? 0) >= 500;
  }
}