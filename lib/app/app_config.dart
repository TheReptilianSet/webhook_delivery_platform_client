import 'package:flutter/foundation.dart';

final class AppConfig {
  const AppConfig({required this.apiBaseUrl});

  factory AppConfig.fromEnvironment() {
    const configuredUrl = String.fromEnvironment('API_BASE_URL');
    if (configuredUrl.isNotEmpty) {
      return const AppConfig(apiBaseUrl: configuredUrl);
    }
    if (kReleaseMode) {
      throw StateError('API_BASE_URL is required for release builds');
    }
    return const AppConfig(apiBaseUrl: 'http://localhost:8000');
  }

  final String apiBaseUrl;
}
