part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.getEvents() = GetEvents;

  const factory CalendarEvent.updateStartDate(DateTime date) = UpdateStartDate;

  const factory CalendarEvent.updateEndDate(DateTime date) = UpdateEndDate;
}
