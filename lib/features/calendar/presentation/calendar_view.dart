import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:test1/features/calendar/presentation/bloc/calendar_bloc.dart';
import 'package:test1/features/calendar/presentation/widgets/event_card.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Calendar'),
        centerTitle: true,
        elevation: 0,
      ),
      body: BlocBuilder<CalendarBloc, CalendarState>(
        builder: (context, state) {
          return Column(
            children: [
              TableCalendar(
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: _focusedDay,
                rangeStartDay: state.startDate,
                rangeEndDay: state.endDate,
                rangeSelectionMode: RangeSelectionMode.toggledOn,
                onRangeSelected: (start, end, focusedDay) {
                  setState(() => _focusedDay = focusedDay);
                  if (start != null) {
                    context.read<CalendarBloc>().add(CalendarEvent.updateStartDate(start));
                  }
                  if (end != null) {
                    context.read<CalendarBloc>().add(CalendarEvent.updateEndDate(end));
                  }
                },
                onPageChanged: (focusedDay) => setState(() => _focusedDay = focusedDay),
                calendarStyle: CalendarStyle(
                  rangeHighlightColor: Colors.blue.withValues(alpha: 0.2),
                  rangeStartDecoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  rangeEndDecoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  todayDecoration: BoxDecoration(
                    color: Colors.orange.withValues(alpha: 0.5),
                    shape: BoxShape.circle,
                  ),
                ),
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
              ),
              1.verticalSpace,
              if (state.startDateError != null || state.endDateError != null)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  color: Colors.red.shade50,
                  child: Text(
                    state.endDateError != null
                      ? 'Range must be at least 7 days'
                      : 'Please select start date',
                    style: TextStyle(color: Colors.red.shade700, fontSize: 13.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
              Expanded(
                child: state.getEventsState.when(
                  idle: () => const Center(
                    child: Text('Select dates to view events'),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (data) {
                    if (state.eventsList.isEmpty) {
                      return const Center(
                        child: Text('No events found'),
                      );
                    }
                    return ListView.separated(
                      padding: EdgeInsets.all(16.r),
                      itemCount: state.eventsList.length,
                      separatorBuilder: (_, __) =>  12.verticalSpace,
                      itemBuilder: (context, index) {
                        return EventCard(event: state.eventsList[index]);
                      },
                    );
                  },
                  error: (error) => Center(
                    child: Padding(
                      padding: EdgeInsets.all(24.r),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.error_outline, size: 48.r, color: Colors.grey),
                          16.verticalSpace,
                          Text(
                            error?.message ?? 'Unknown error',
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          16.verticalSpace,
                          TextButton.icon(
                            onPressed: () {
                              context.read<CalendarBloc>().add(const CalendarEvent.getEvents());
                            },
                            icon: const Icon(Icons.refresh),
                            label: const Text('Retry'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
