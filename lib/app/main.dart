import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:test1/core/logger/talker_flutter.dart';
import '../core/config/env_config.dart';
import '../di/app_injection.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  EnvConfig.init(Environment.staging);
  await configureDependencies();
  Bloc.observer = TalkerBlocObserver(talker: talker);

  FlutterError.onError = (details) {
    talker.handle(details.exception, details.stack, 'FlutterError');
  };

  runApp(const App());
}