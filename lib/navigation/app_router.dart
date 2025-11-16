import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:test1/features/calendar/presentation/calendar_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  List<NavigatorObserver> get navigatorObservers => [AutoRouteObserver()];

  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: CalendarRoute.page),
  ];
}
