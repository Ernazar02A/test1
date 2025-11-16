import 'package:test1/core/base/base_repository.dart';
import 'package:test1/core/utils/type_alieses.dart';
import 'package:injectable/injectable.dart';
import 'package:test1/features/calendar/api/calendar_api.dart';
import 'package:test1/features/calendar/model/model/calendar_model.dart';
import 'package:test1/features/calendar/repo/calendar_repo.dart';

@LazySingleton(as: CalendarRepo)
class EventsRepoImpl extends BaseRepository implements CalendarRepo {
  final CalendarApi _api;

  EventsRepoImpl(this._api);

  @override
  RemoteWrapper<List<CalendarModel>> getEvents(String startDate, String? endDate) async {
    return makeRequest(request: () => _api.getEvents(startDate, endDate));
  }
}