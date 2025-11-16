import 'package:test1/core/utils/type_alieses.dart';
import 'package:test1/features/calendar/model/model/calendar_model.dart';

abstract class CalendarRepo {
  RemoteWrapper<List<CalendarModel>> getEvents(String startDate, String? endDate);
}