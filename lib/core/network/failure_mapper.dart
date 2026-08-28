import 'package:dio/dio.dart';

import 'app_failure.dart';

final class FailureMapper {
  const FailureMapper._();

  static AppFailure fromException(Object error, StackTrace _) {
    if (error is DioException) {
      final response = error.response;
      final data = response?.data;
      if (data is Map<String, dynamic>) {
        final envelope = data['error'];
        if (envelope is Map<String, dynamic>) {
          return AppFailure(
            kind: AppFailureKind.backend,
            code: envelope['code'] as String?,
            backendMessage: envelope['message'] as String?,
            requestId: envelope['request_id'] as String?,
            statusCode: response?.statusCode,
            retryAfterSeconds: _retryAfter(response),
          );
        }
      }
      return AppFailure(
        kind: AppFailureKind.network,
        statusCode: response?.statusCode,
        retryAfterSeconds: _retryAfter(response),
      );
    }
    return const AppFailure(kind: AppFailureKind.unexpected);
  }

  static int? _retryAfter(Response<dynamic>? response) {
    final value = response?.headers.value('retry-after');
    return value == null ? null : int.tryParse(value);
  }
}
