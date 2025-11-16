// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:talker/talker.dart' as _i993;
import 'package:test1/core/api/interceptor/app_interceptor.dart' as _i980;
import 'package:test1/core/api/interceptor/logging_interceptor.dart' as _i338;
import 'package:test1/core/api/interceptor/retry_interceptor.dart' as _i872;
import 'package:test1/core/api/interceptor/serialization_interceptor.dart'
    as _i1007;
import 'package:test1/core/storage/base/prefs_storage_service_impl.dart'
    as _i91;
import 'package:test1/core/storage/base/secure_storage_service_impl.dart'
    as _i705;
import 'package:test1/core/storage/base/storage_service.dart' as _i383;
import 'package:test1/core/storage/prefs/prefs_storage_manager.dart' as _i1030;
import 'package:test1/core/storage/secure/secure_storage_manager.dart' as _i486;
import 'package:test1/di/app_injection.dart' as _i137;
import 'package:test1/features/calendar/api/calendar_api.dart' as _i536;
import 'package:test1/features/calendar/presentation/bloc/calendar_bloc.dart'
    as _i835;
import 'package:test1/features/calendar/repo/calendar_repo.dart' as _i508;
import 'package:test1/features/calendar/repo/calendar_repo_impl.dart' as _i834;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final talkerModule = _$TalkerModule();
    final networkModule = _$NetworkModule();
    gh.singleton<_i993.Talker>(() => talkerModule.talker);
    gh.lazySingleton<_i980.AppInterceptor>(() => _i980.AppInterceptor());
    gh.lazySingleton<_i1007.SerializationInterceptor>(
        () => _i1007.SerializationInterceptor());
    gh.lazySingleton<_i383.StorageService>(
      () => _i91.PrefsStorageServiceImpl(),
      instanceName: 'prefs',
    );
    gh.lazySingleton<_i383.StorageService>(
      () => _i705.SecureStorageServiceImpl(),
      instanceName: 'secure',
    );
    gh.lazySingleton<_i486.SecureStorageManager>(
      () => _i486.SecureStorageManager(
          gh<_i383.StorageService>(instanceName: 'secure')),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i1030.PrefsStorageManager>(() =>
        _i1030.PrefsStorageManager(
            gh<_i383.StorageService>(instanceName: 'prefs')));
    gh.lazySingleton<_i338.LoggingInterceptor>(
        () => _i338.LoggingInterceptor(gh<_i993.Talker>()));
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.providePlainDio(gh<_i338.LoggingInterceptor>()),
      instanceName: 'plainDio',
    );
    gh.lazySingleton<_i872.RetryInterceptor>(
        () => _i872.RetryInterceptor(gh<_i361.Dio>(instanceName: 'plainDio')));
    gh.lazySingleton<_i361.Dio>(() => networkModule.provideDio(
          gh<_i361.Dio>(instanceName: 'plainDio'),
          gh<_i1007.SerializationInterceptor>(),
          gh<_i980.AppInterceptor>(),
          gh<_i872.RetryInterceptor>(),
          gh<_i338.LoggingInterceptor>(),
        ));
    gh.lazySingleton<_i536.CalendarApi>(
        () => _i536.CalendarApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i508.CalendarRepo>(
        () => _i834.EventsRepoImpl(gh<_i536.CalendarApi>()));
    gh.factory<_i835.CalendarBloc>(
        () => _i835.CalendarBloc(gh<_i508.CalendarRepo>()));
    return this;
  }
}

class _$TalkerModule extends _i137.TalkerModule {}

class _$NetworkModule extends _i137.NetworkModule {}
