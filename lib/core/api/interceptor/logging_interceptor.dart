import 'package:injectable/injectable.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

@lazySingleton
class LoggingInterceptor extends TalkerDioLogger {
  LoggingInterceptor(Talker talker)
      : super(
          talker: talker,
          settings: const TalkerDioLoggerSettings(
            printRequestHeaders: true,
            printErrorHeaders: true,
            printRequestData: true,
            printResponseHeaders: true,
            printResponseData: true,
            printResponseMessage: true,
            printErrorData: true,
            printErrorMessage: true,
          )
      );
}