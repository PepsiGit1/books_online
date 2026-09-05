import 'package:injectable/injectable.dart';

import 'env_loader.dart';

@module
abstract class AppConfigModule {
  @lazySingleton
  AppConfig get appConfig => AppConfig.load();
}

class AppConfig {
  const AppConfig({required this.appTitle, required this.environment, required this.apiBaseUrl});

  final String appTitle;
  final String environment;
  final String apiBaseUrl;

  static AppConfig load() {
    return AppConfig(appTitle: 'Books Online', environment: EnvLoader.currentEnvironment.name, apiBaseUrl: EnvLoader.apiBaseUrl);
  }
}
