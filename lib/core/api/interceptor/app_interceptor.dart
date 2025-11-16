import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept'] = 'application/json';

    if (options.data != null) {
      if (options.data is FormData) {
      } else if (options.data is String) {
        options.headers['Content-Type'] ??= 'application/json; charset=UTF-8';
      } else if (options.data is Map || options.data is List) {
        options.headers['Content-Type'] = 'application/json; charset=UTF-8';
      } else {
        options.headers['Content-Type'] = 'application/json; charset=UTF-8';
      }
    }

    super.onRequest(options, handler);
  }
}