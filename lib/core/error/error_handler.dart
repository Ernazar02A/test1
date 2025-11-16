
import 'package:dio/dio.dart';
import 'package:test1/core/model/validation_error_model.dart';
import 'error_entity.dart';

class ErrorHandler {
  static ErrorEntity handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const TimeoutError();

      case DioExceptionType.connectionError:
        return const NetworkError();

      case DioExceptionType.badResponse:
        return _handleBadResponse(error);

      case DioExceptionType.cancel:
        return const UnexpectedError(message: 'Request cancelled');

      default:
        return UnexpectedError(message: error.message);
    }
  }

  static ErrorEntity _handleBadResponse(DioException error) {
    final statusCode = error.response?.statusCode ?? 0;
    final data = error.response?.data;

    String? message;
    if (data is Map<String, dynamic>) {
      final messageField = data['message'] ?? data['error'];

      if (messageField is String) {
        message = messageField;
      } else if (messageField is Map<String, dynamic>) {
        message = messageField['message'] ??
            messageField['detail'] ??
            messageField['description'] ??
            messageField.toString();
      } else if (messageField != null) {
        message = messageField.toString();
      }
    }
    switch (statusCode) {
      case 400:
        try {
          final validationErrorModel = ValidationErrorModel.fromJson(data);

          return ValidationError(
            errorCode: validationErrorModel.code,
            message: message ?? 'Invalid request',
          );
        } catch (_) {
          return ValidationError(
            errorCode: null,
            message: message ?? 'Invalid request',
          );
        }
      case 401:
        return ApiError(
          statusCode: statusCode,
          message: message ?? 'Unauthorized',
          code: 'UNAUTHORIZED',
        );
      case 403:
        return ApiError(
          statusCode: statusCode,
          message: message ?? 'Forbidden',
          code: 'FORBIDDEN',
        );
      case 404:
        return ApiError(
          statusCode: statusCode,
          message: message ?? 'Not found',
          code: 'NOT_FOUND',
        );
      case 500:
        return ApiError(
          statusCode: statusCode,
          message: message ?? 'Server error',
          code: 'SERVER_ERROR',
        );
      default:
        return ApiError(
          statusCode: statusCode,
          message: message ?? 'Something went wrong',
          data: data,
        );
    }
  }
}