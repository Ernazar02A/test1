import 'package:flutter/material.dart';
import 'package:shake/shake.dart';
import 'package:talker_flutter/talker_flutter.dart';

class ShakeDetectorService {
  ShakeDetector? _detector;

  void initialize({
    required GlobalKey<NavigatorState> navigatorKey,
    required Talker talker,
  }) {
    _detector = ShakeDetector.autoStart(
      onPhoneShake: (event) {
        final navigator = navigatorKey.currentState;
        if (navigator != null) {
          navigator.push(
            MaterialPageRoute(
              builder: (context) => TalkerScreen(talker: talker),
            ),
          );
        }
      },
      minimumShakeCount: 1,
      shakeSlopTimeMS: 300,
      shakeCountResetTime: 2000,
      shakeThresholdGravity: 2.0,
    );
  }

  void dispose() {
    _detector?.stopListening();
    _detector = null;
  }
}
