import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/features/calendar/presentation/bloc/calendar_bloc.dart';
import 'package:test1/features/calendar/presentation/calendar_view.dart';

import '../../../di/app_injection.dart';

@RoutePage()
class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key,});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CalendarBloc>(),
      child: const CalendarView(),
    );
  }
}