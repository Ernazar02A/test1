abstract class ErrorEntity {
  final String? message;
  final String? code;

  const ErrorEntity({this.message, this.code});
}

class ApiError extends ErrorEntity {
  final int statusCode;
  final dynamic data;

  const ApiError({
    required this.statusCode,
    this.data,
    super.message,
    super.code,
  });
}

class NetworkError extends ErrorEntity {
  const NetworkError({String? message})
      : super(message: message ?? 'No internet connection');
}

class TimeoutError extends ErrorEntity {
  const TimeoutError({String? message})
      : super(message: message ?? 'Request timeout');
}

class UnexpectedError extends ErrorEntity {
  const UnexpectedError({String? message})
      : super(message: message ?? 'An unexpected error occurred');
}

class ValidationError extends ErrorEntity {
  final int? errorCode;

  const ValidationError({
    super.message,
    this.errorCode,
  });
}