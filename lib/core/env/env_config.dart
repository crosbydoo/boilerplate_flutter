class EnvConfig {
  EnvConfig({
    this.apiBaseUrl,
    this.apiSentry,
  });

  final String? apiBaseUrl;
  final String? apiSentry;

  // Digunakan untuk melacak apakan hanya ada 1 instance dalam aplikasi
  static EnvConfig? _instance;

  static Future<EnvConfig> getInstance({
    String? apiBaseUrl,
    String? apiSentry,
  }) async {
    if (_instance == null) {
      _instance = EnvConfig(
        apiBaseUrl: apiBaseUrl,
        apiSentry: apiSentry,
      );
      return _instance!;
    }
    return _instance!;
  }
}
