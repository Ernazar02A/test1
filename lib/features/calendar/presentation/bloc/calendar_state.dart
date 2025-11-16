part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState({
    @Default(null) DateTime? startDate,
    @Default(null) ValidationErrorType? startDateError,
    @Default(null) DateTime? endDate,
    @Default(null) ValidationErrorType? endDateError,
    @Default(UIState.idle()) UIState getEventsState,
    required List<CalendarModel> eventsList,
  }) = _EventsState;
}
