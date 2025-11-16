enum Environment { staging }

class EnvConfig {
  static Environment _environment = Environment.staging;

  static void init(Environment env) {
    _environment = env;
  }

  static String get baseUrl {
    return 'https://test-task-app-alpha.vercel.app/api/';
  }

  static bool get isStaging => _environment == Environment.staging;

  static bool get isRelease => false;

  static Environment get environment => _environment;

  static Duration get timeout => const Duration(seconds: 30);
}
