import 'package:boilerplate_flutter/core/env/env_config.dart';

class AppSettings {
  AppSettings.setting() {
    EnvConfig.getInstance(
      apiBaseUrl: url,
    );
  }
  static String url = 'https://api.com/api';
}
