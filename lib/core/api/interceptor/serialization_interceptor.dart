import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SerializationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.data != null &&
        options.data is! FormData &&
        options.data is! String) {
      try {
        if (options.data is Map) {
        } else {
          final dynamic data = options.data;
          if (data.toJson is Function) {
            options.data = data.toJson();
          }
        }
      } catch (_) {}
    }

    super.onRequest(options, handler);
  }
}
