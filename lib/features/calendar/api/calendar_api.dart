import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test1/features/calendar/model/model/calendar_model.dart';

part 'calendar_api.g.dart';

@lazySingleton
@RestApi()
abstract class CalendarApi {
  @factoryMethod
  factory CalendarApi(Dio dio) = _CalendarApi;

  @GET('test-task')
  Future<List<CalendarModel>> getEvents(
    @Query('start_date') String startDate,
    @Query('end_date') String? endDate,
  );
}