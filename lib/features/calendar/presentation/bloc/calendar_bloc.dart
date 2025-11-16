import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:test1/core/base/base_bloc.dart';
import 'package:test1/core_ui/state/ui_state.dart';
import 'package:test1/core_ui/utils/validation_error_type.dart';
import 'package:test1/features/calendar/model/model/calendar_model.dart';
import 'package:test1/features/calendar/repo/calendar_repo.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';

@injectable
class CalendarBloc extends BaseBloc<CalendarEvent, CalendarState>  {
  final CalendarRepo _repository;

  CalendarBloc(this._repository) : super(CalendarState(eventsList: [])) {
    on<GetEvents>(_onLoadEvents);
    on<UpdateStartDate>(_updateStartDate);
    on<UpdateEndDate>(_updateEndDate);
  }

  void _updateStartDate(UpdateStartDate event, Emitter<CalendarState> emit) {
    emit(state.copyWith(startDate: event.date, startDateError: null));
    _validateDates(emit);
    add(const CalendarEvent.getEvents());
  }

  void _updateEndDate(UpdateEndDate event, Emitter<CalendarState> emit) {
    emit(state.copyWith(endDate: event.date, endDateError: null));
    _validateDates(emit);
    add(const CalendarEvent.getEvents());
  }

  Future<void> _onLoadEvents(
    GetEvents event,
    Emitter<CalendarState> emit,
  ) async {

    if (state.startDateError != null || state.endDateError != null) return;

    final startDate = state.startDate != null
        ? DateFormat('yyyy-MM-dd').format(state.startDate!)
        : "";
    final endDate = state.endDate != null
        ? DateFormat('yyyy-MM-dd').format(state.endDate!)
        : null;

    await handleRequest(
      operation: () => _repository.getEvents(startDate, endDate),
      onStateUpdate: (eventsState) {
        emit(state.copyWith(getEventsState: eventsState));
      },
      onSuccess: (response) {
        emit(state.copyWith(eventsList: response));
      },
    );
  }

  void _validateDates(Emitter<CalendarState> emit) {
    final startDate = state.startDate;
    final endDate = state.endDate;

    ValidationErrorType? startDateError;
    ValidationErrorType? endDateError;

    if (startDate == null) {
      startDateError = ValidationErrorType.blank;
    }

    if (startDate != null && endDate != null) {
      final difference = endDate.difference(startDate).inDays;
      if (difference < 7) {
        endDateError = ValidationErrorType.endDateValidation;
      }
    }

    emit(
      state.copyWith(
        startDateError: startDateError,
        endDateError: endDateError,
      ),
    );
  }
}
