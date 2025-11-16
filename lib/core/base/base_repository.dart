import 'package:dio/dio.dart';
import '../error/error_handler.dart';
import '../utils/either.dart';
import '../error/error_entity.dart';

abstract class BaseRepository {

  BaseRepository();

  Future<Either<ErrorEntity, T>> makeRequest<T>({
    required Future<T> Function() request,
    void Function(T response)? onSuccess,
    ErrorEntity Function(dynamic)? errorHandler,
  }) async {
    try {
      final result = await request();
      onSuccess?.call(result);
      return Either.right(result);
    } on DioException catch (e) {
      return Either.left(
        errorHandler?.call(e) ?? ErrorHandler.handleDioError(e),
      );
    } catch (e) {
      return Either.left(
        errorHandler?.call(e) ?? UnexpectedError(message: e.toString()),
      );
    }
  }

  Future<Either<ErrorEntity, T>> makeRequestWithMapping<R, T>({
    required Future<R> Function() request,
    required T Function(R) mapper,
    void Function(T response)? onSuccess,
    ErrorEntity Function(dynamic)? errorHandler,
  }) async {
    final result = await makeRequest<R>(
      request: request,
      errorHandler: errorHandler,
    );

    return result.map((data) {
      final mapped = mapper(data);
      onSuccess?.call(mapped);
      return mapped;
    });
  }
}