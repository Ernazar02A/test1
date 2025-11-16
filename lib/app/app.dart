import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talker_flutter/talker_flutter.dart';
import '../core/logger/draggable_talker_button.dart';
import '../core/logger/shake_detector_service.dart';
import '../core/logger/talker_flutter.dart' as talker_instance;
import '../core/utils/device_helper.dart';
import '../core_ui/theme/app_theme.dart';
import '../localization/generated/app_localizations.dart';
import '../localization/l10n/l10n.dart';
import '../navigation/app_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  final _shakeDetectorService = ShakeDetectorService();
  late final AppRouter _appRouter;
  bool _isPhysicalDevice = true;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter(navigatorKey: _navigatorKey);
    _initServices();
  }

  Future<void> _initServices() async {
    _isPhysicalDevice = await DeviceHelper.isPhysicalDevice();
    setState(() {});

    _shakeDetectorService.initialize(
      navigatorKey: _navigatorKey,
      talker: talker_instance.talker,
    );
  }

  @override
  void dispose() {
    _shakeDetectorService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TalkerWrapper(
      talker: talker_instance.talker,
      options: const TalkerWrapperOptions(
        enableErrorAlerts: true,
        enableExceptionAlerts: true,
      ),
      child: ScreenUtilInit(
          designSize: const Size(393, 852),
          minTextAdapt: true,
          splitScreenMode: true,
          useInheritedMediaQuery: true,
          builder: (context, child) {
            return MaterialApp.router(
              title: 'Calendar',
              theme: AppTheme.lightTheme(),
              darkTheme: AppTheme.darkTheme(),
              routerConfig: _appRouter.config(),
              supportedLocales: L10n.all,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                L.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ]
            );
          }
      ),
    );
  }
}