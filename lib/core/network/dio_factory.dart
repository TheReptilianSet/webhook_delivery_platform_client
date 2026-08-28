import 'package:dio/dio.dart';

import '../session/domain/session_repository.dart';
import 'auth_interceptor.dart';

final class DioFactory {
  const DioFactory._();

  static Dio createAnonymous(String baseUrl) => Dio(_options(baseUrl));

  static Dio createAuthenticated(String baseUrl, SessionRepository session) {
    final dio = Dio(_options(baseUrl));
    dio.interceptors.add(AuthInterceptor(dio: dio, session: session));
    return dio;
  }

  static BaseOptions _options(String baseUrl) => BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 20),
    sendTimeout: const Duration(seconds: 20),
    contentType: Headers.jsonContentType,
    responseType: ResponseType.json,
    headers: const {'Accept': Headers.jsonContentType},
  );
}
