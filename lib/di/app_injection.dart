import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:test1/core/api/interceptor/logging_interceptor.dart';
import 'package:test1/core/logger/talker_flutter.dart' as talker_instance;
import 'package:talker/talker.dart';
import '../core/api/interceptor/app_interceptor.dart';
import '../core/api/interceptor/retry_interceptor.dart';
import '../core/api/interceptor/serialization_interceptor.dart';
import '../core/config/env_config.dart';
import 'app_injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  getIt.init();
}

const plainDio = Named('plainDio');

@module
abstract class NetworkModule {
  /// Plain Dio instance without interceptors
  /// Used internally by interceptors to avoid circular dependencies
  /// This is NOT the default - must be explicitly requested with @plainDio
  @plainDio
  @lazySingleton
  Dio providePlainDio(LoggingInterceptor loggingInterceptor) {
    final dio = Dio(
      BaseOptions(
        baseUrl: EnvConfig.baseUrl,
        connectTimeout: EnvConfig.timeout,
        receiveTimeout: EnvConfig.timeout,
        sendTimeout: EnvConfig.timeout,
        contentType: 'application/json',
        responseType: ResponseType.json,
      ),
    );
    if (!kReleaseMode) {
      dio.interceptors.add(loggingInterceptor);
    }
    return dio;
  }

  /// Default Dio instance with all interceptors
  /// This is what gets injected when you just request 'Dio'
  /// No qualifier needed - this is the default
  @lazySingleton
  Dio provideDio(
    @plainDio Dio plainDio,
    SerializationInterceptor serializationInterceptor,
    AppInterceptor appInterceptor,
    RetryInterceptor retryInterceptor,
    LoggingInterceptor loggingInterceptor,
  ) {
    final dio = Dio(
      BaseOptions(
        baseUrl: EnvConfig.baseUrl,
        connectTimeout: EnvConfig.timeout,
        receiveTimeout: EnvConfig.timeout,
        sendTimeout: EnvConfig.timeout,
        contentType: 'application/json',
        responseType: ResponseType.json,
      ),
    );

    dio.interceptors.addAll([
      serializationInterceptor,
      if (!EnvConfig.isRelease) loggingInterceptor,
      appInterceptor,
      retryInterceptor,
    ]);

    return dio;
  }
}

@module
abstract class TalkerModule {
  @singleton
  Talker get talker => talker_instance.talker;
}