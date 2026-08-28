import 'package:dio/dio.dart';

import '../session/domain/session_repository.dart';

final class AuthInterceptor extends Interceptor {
  AuthInterceptor({required Dio dio, required SessionRepository session})
    : _dio = dio,
      _session = session;

  static const _retriedKey = 'authenticated_retry';

  final Dio _dio;
  final SessionRepository _session;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final result = await _session.accessTokenForRequest().run();
    result.match((_) => handler.next(options), (token) {
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
      handler.next(options);
    });
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final request = err.requestOptions;
    if (err.response?.statusCode != 401 || request.extra[_retriedKey] == true) {
      handler.next(err);
      return;
    }

    final refreshed = await _session.refreshAccessToken().run();
    await refreshed.match((_) async => handler.next(err), (accessToken) async {
      request.extra[_retriedKey] = true;
      request.headers['Authorization'] = 'Bearer $accessToken';
      try {
        handler.resolve(await _dio.fetch<dynamic>(request));
      } on DioException catch (retryError) {
        handler.next(retryError);
      }
    });
  }
}
