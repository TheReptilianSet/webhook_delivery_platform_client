import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

enum AppFailureKind { backend, network, storage, unexpected }

@freezed
abstract class AppFailure with _$AppFailure {
  const factory AppFailure({
    required AppFailureKind kind,
    String? code,
    String? backendMessage,
    String? requestId,
    int? statusCode,
    int? retryAfterSeconds,
  }) = _AppFailure;
}
